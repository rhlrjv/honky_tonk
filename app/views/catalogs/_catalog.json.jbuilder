json.extract! catalog, :id, :sku, :name, :description, :created_at, :updated_at
json.url catalog_url(catalog, format: :json)