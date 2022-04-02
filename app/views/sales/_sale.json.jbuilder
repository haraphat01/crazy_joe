json.extract! sale, :id, :customer_id, :copies, :game_id, :date, :margin, :created_at, :updated_at
json.url sale_url(sale, format: :json)
