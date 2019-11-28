class Material < ApplicationRecord
  belongs_to :UnidadeMedida
  belongs_to :Fornecedor
end
