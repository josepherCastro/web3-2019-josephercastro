class Material < ApplicationRecord
  belongs_to :UnidadeMedida
  belongs_to :Fornecedor

  def to_s
    self.nome
  end
end
