json.extract! product, :id, :name, :current_price, :description, :images, :created_at, :updated_at
json.url product_url(product, format: :json)
