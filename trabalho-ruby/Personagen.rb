class Humano 
    @nome = "Humano"
    @vida = 20
    @ataque = 8
    @defesa = 8
    @inteligencia = 10
    @forca = 10 
end
class Elfo
    @nome = "Elfo"
    @vida = 25
    @ataque = 5
    @defesa = 6
    @inteligencia = 20
    @forca = 10 
end
class Orc
    @Nome = "Orc"
    @vida = 15
    @ataque = 12
    @defesa = 5
    @inteligencia = 2
    @forca = 25
end
class Anao
    @nome = "Anão"
    @vida = 18
    @ataque = 9
    @defesa = 11
    @inteligencia = 7
    @forca = 20
end
class Classe
    def initialize habilidade, modificadores
        @habilidade = habilidade
        @modificadores = modificadores
    end
end
class Personagem 
    def initialize nome, idade, vida, ataque, defesa, inteligencia, forca, raca
        @vida = vida
        @ataque = ataque
        @defesa = defesa
        @inteligencia = inteligencia
        @forca = forca
        @raca = raca
    end
end

op = 0
while sair != 1
    puts "Tecle 0 pra sair."
    puts "1 para cadastrar personagem."
    puts "2 para cadadstrar classe."
    op = gets.to_i
    
    if op == 1 
        puts "Isira os dados de criação do seu personagem!"
        
        puts "Primeiro - selecione uma classe:"
        puts "1 - Humano"
        puts "2 - Elfo"
        puts "3 - Orc"
        puts "4 - Anão"
        op_classe = gets.t

        if op_classe == 1
            personagem = Personagem.new

        puts "Segundo passo.."
        puts "Nome:"
        nome = gets.to_s
        puts "Idade:"
        idade = gets.to_i

        





end








