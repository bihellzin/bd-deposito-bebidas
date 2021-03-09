class CreateEnderecos < ActiveRecord::Migration[6.1]
  def change
    create_table :enderecos do |t|
      t.string :logradouro
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.integer :numero
      t.string :complemento

      t.timestamps
    end
  end
end
