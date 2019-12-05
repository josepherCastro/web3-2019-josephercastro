class Funcionario < ApplicationRecord
    enum cargo: [:admin, :almoxarife, :comum]
    belongs_to :user
end
