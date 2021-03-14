class AddPedidoProdutoToPedidoCliente < ActiveRecord::Migration[6.1]
  def change
    add_reference :pedido_clientes, :pedido_produto
  end
end
