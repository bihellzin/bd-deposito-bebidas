class CreateBebidaNaoAlcoolicas < ActiveRecord::Migration[6.1]
  def change
    create_table :bebida_nao_alcoolicas do |t|
      t.string :codigo_de_barras
      t.string :nome
      t.decimal :valor
      t.integer :quantidade_estoque

      t.timestamps
    end
  end
end
