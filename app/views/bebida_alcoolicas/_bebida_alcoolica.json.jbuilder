json.extract! bebida_alcoolica, :id, :codigo_de_barras, :nome, :valor, :quantidade_estoque, :identidade_cliente, :created_at, :updated_at
json.url bebida_alcoolica_url(bebida_alcoolica, format: :json)
