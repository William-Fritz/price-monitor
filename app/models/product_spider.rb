class ProductSpider < Kimurai::Base
  @name = 'product_spider'
  @engine = :mechanize

  def self.process(url)
    @start_urls = [url]
    self.parse!(:parse, url: url)
  end
  
  def parse(response, url:, data: {})
    product = {}
    product[:name] = response
      .xpath('/html/head/meta[@property="og:title"]/@content').to_s
    product[:current_price] = response
      .xpath('/html/head/meta[@property="product:price:amount"]/@content')
      &.text&.squish&.delete('^0-9\.').to_i
    product[:url] = response
      .xpath('/html/head/meta[@property="og:url"]/@content').to_s
    product[:description] = response
      .xpath('/html/head/meta[@property="og:description"]/@content').to_s
    product[:image_url] = response
      .xpath('/html/head/meta[@property="og:image"]/@content').to_s
    product
  end
end

