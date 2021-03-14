class CreatePedidoProdutos < ActiveRecord::Migration[6.1]
  def change
    create_table :pedido_produtos do |t|
      t.integer :produto_id
      t.integer :fornecedor_id
      t.integer :funcionario_id

      t.timestamps
    end
  end
end
