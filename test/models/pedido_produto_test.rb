require "test_helper"

class PedidoProdutoTest < ActiveSupport::TestCase
  belongs_to :pedidofornecedor
  belongs_to :pedidocliente
  belongs_to :produto
end
