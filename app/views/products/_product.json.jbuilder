json.extract! product, :id, :name, :description, :references, :references, :current_price, :created_at, :updated_at
json.url product_url(product, format: :json)
