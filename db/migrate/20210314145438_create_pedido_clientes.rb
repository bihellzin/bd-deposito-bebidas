class CreatePedidoClientes < ActiveRecord::Migration[6.1]
  def change
    create_table :pedido_clientes do |t|
      t.belongs_to :funcionario

      t.timestamps
    end
  end
end
