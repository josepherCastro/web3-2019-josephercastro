class Retirada < ApplicationRecord
  belongs_to :Material
  belongs_to :Funcionario
end
