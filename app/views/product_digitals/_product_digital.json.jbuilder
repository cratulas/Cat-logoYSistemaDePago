json.extract! product_digital, :id, :name, :description, :stock, :price, :sku, :created_at, :updated_at
json.url product_digital_url(product_digital, format: :json)
