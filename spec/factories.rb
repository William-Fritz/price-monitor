FactoryBot.define do
  factory :product do
    name {"example"}
    current_price {10000}
    url {'http://www.exampledata.com/'}
    image_url {'https://homepages.cae.wisc.edu/~ece533/images/airplane.png'}
  end
end

