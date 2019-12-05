class UnidadeMedida < ApplicationRecord
    def to_s
        self.nome
    end
end
