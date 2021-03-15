class AddAllAssociationsPedidoProduto < ActiveRecord::Migration[6.1]
  def change
    add_reference :pedido_produtos, :bebida_alcoolica
    add_reference :pedido_produtos, :bebida_nao_alcoolica
  end
end
