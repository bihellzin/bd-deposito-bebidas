class AddAutoRelationFuncionario < ActiveRecord::Migration[6.1]
  def change
    change_table :funcionarios do |t|
      t.references :gerente, index: true
    end
  end
end
