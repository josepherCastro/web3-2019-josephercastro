require_relative './tipos_raca'
require_relative './classe'

class Personagem
    attr_accessor :nome_personagem, :idade, :raca, :classes

    def initialize nome, idade, raca
        @nome_personagem = nome
        @idade = idade
        @raca = raca
        # @classes = [classe]
    end

    def to_s
        puts "Nome: #{nome_personagem} Idade: #{idade} - deu certo"
    end
end


