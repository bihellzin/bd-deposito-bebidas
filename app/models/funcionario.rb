class Funcionario < ApplicationRecord
    validates :nome, presence: true
    validates :cpf, presence: true, uniqueness: true
    validates :cargo, presence: true
    has_many :telefones
    has_one :endereco
end
