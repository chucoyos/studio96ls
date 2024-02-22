json.extract! service, :id, :name, :description, :price, :commission, :created_at, :updated_at
json.url service_url(service, format: :json)
