class CreateProdutos < ActiveRecord::Migration[6.1]
  def change
    create_table :produtos do |t|
      t.string :codigo_de_barras
      t.string :nome
      t.decimal :valor
      t.integer :estoque

      t.timestamps
    end
  end
end
