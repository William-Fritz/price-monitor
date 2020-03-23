class ProductSpider < Kimurai::Base

  @name = 'product_spider'
  @engine = :mechanize

  def self.process(url)
    @start_urls = [url]
    self.parse!(:parse, url: url)
  end
  
  def parse(response, url:, data: {})
    item = {}
    item[:name] = response.xpath('/html/head/meta[@property="og:title"]/@content').to_s
    item[:current_price] = response.xpath('/html/head/meta[@property="product:price:amount"]/@content')&.text&.squish&.delete('^0-9\.').to_i
    item[:url] = response.xpath('/html/head/meta[@property="og:url"]/@content').to_s
    item[:description] = response.xpath('/html/head/meta[@property="og:description"]/@content').to_s
    item[:image_url] = response.xpath('/html/head/meta[@property="og:image"]/@content').to_s
    item
  end
end


