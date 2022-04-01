json.extract! customer, :id, :customer_name, :store_name, :address, :phone, :created_at, :updated_at
json.url customer_url(customer, format: :json)
