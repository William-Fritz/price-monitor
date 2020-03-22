class ProductSpider < Kimurai::Base

  @name = 'product_spider'
  @engine = :mechanize

  def self.process(url)
    @start_urls = [url]
    self.crawl!
  end

  def parse(response, url:, data: {})
    response.xpath("//div[@class='shop-srp-listings_listing-']")
    item = {}
  end
end


