json.extract! pedido_cliente, :id, :quantidade, :valor, :created_at, :updated_at
json.url pedido_cliente_url(pedido_cliente, format: :json)
