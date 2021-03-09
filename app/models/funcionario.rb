class Funcionario < ApplicationRecord
    validates :nome, presence: true
    validates :cpf, presence: true
    validates :cargo, presence: true
end
