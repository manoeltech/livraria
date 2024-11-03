json.extract! order, :id, :status, :method_of_payment, :discount, :total, :shipping_id, :client_id, :book_id, :created_at, :updated_at
json.url order_url(order, format: :json)
