json.extract! produto, :id, :codigo_de_barras, :nome, :valor, :estoque, :created_at, :updated_at
json.url produto_url(produto, format: :json)
