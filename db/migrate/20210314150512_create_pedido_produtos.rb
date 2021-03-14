class CreatePedidoProdutos < ActiveRecord::Migration[6.1]
  def change
    create_table :pedido_produtos do |t|
      t.integer :quantidade

      t.timestamps
    end
  end
end
