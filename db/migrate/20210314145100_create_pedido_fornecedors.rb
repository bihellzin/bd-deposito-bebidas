class CreatePedidoFornecedors < ActiveRecord::Migration[6.1]
  def change
    create_table :pedido_fornecedors do |t|
      t.belongs_to :funcionario
      t.belongs_to :fornecedor

      t.timestamps
    end
  end
end
