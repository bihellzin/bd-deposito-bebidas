class CreateFuncionarios < ActiveRecord::Migration[6.1]
  def change
    create_table :funcionarios do |t|
      t.integer :cpf
      t.string :nome
      t.string :cargo

      t.timestamps
    end
  end
end
