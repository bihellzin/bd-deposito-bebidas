class CreateTelefones < ActiveRecord::Migration[6.1]
  def change
    create_table :telefones do |t|
      t.integer :numero
      t.belongs_to :funcionario

      t.timestamps
    end
  end
end
