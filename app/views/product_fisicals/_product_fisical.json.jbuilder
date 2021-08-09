json.extract! product_fisical, :id, :name, :size, :description, :stock, :price, :sku, :created_at, :updated_at
json.url product_fisical_url(product_fisical, format: :json)
