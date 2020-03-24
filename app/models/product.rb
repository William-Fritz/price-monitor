class Product < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :current_price
  validates_presence_of :url
end

