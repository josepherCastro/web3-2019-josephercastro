class Fornecedor < ApplicationRecord
    def to_s
        self.nome
    end
end
