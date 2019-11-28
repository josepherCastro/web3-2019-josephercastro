class Funcionario < ApplicationRecord
    enum cargo: [:admin, :almoxarife, :comum]
end
