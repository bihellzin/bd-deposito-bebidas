class AddAlgumaCoisa < ActiveRecord::Migration[6.1]
  def change
    add_reference :pedido_fornecedors, :pedido_produto
  end
end
