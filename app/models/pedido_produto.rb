class PedidoProduto < ApplicationRecord
    has_one :bebida_alcoolica
    has_one :bebida_nao_alcoolica
end
