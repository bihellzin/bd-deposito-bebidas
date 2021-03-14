json.extract! pedido_fornecedor, :id, :quantidade, :valor, :created_at, :updated_at
json.url pedido_fornecedor_url(pedido_fornecedor, format: :json)
