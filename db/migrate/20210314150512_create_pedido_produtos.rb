class CreatePedidoProdutos < ActiveRecord::Migration[6.1]
  def change
    create_table :pedido_produtos do |t|
      t.integer :quantidade
      t.belongs_to :pedido_cliente
      t.belongs_to :pedido_fornecedor

      t.timestamps
    end
  end
end
