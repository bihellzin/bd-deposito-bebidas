class CreateBebidaAlcoolicas < ActiveRecord::Migration[6.1]
  def change
    create_table :bebida_alcoolicas do |t|
      t.string :codigo_de_barras
      t.string :nome
      t.decimal :valor
      t.integer :quantidade_estoque
      t.string :identidade_cliente

      t.timestamps
    end
  end
end
