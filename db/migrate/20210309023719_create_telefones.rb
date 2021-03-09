class CreateTelefones < ActiveRecord::Migration[6.1]
  def change
    create_table :telefones do |t|
      t.integer :residencial
      t.integer :celulares, array: true, default: []

      t.timestamps
    end
  end
end
