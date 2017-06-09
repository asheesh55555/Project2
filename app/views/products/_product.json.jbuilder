json.extract! product, :id, :title, :desc, :location, :created_at, :updated_at
json.url product_url(product, format: :json)
