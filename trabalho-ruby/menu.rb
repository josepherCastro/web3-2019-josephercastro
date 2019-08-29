require_relative './tipos_raca'
require_relative './personagen'
require_relative './classe'



def segundo_passo raca
    puts "Segundo passo.."
    puts "Ainda sobre seu personagem!"
    puts "Nome:"
    nome = gets.strip.to_s
    puts "Idade:"
    idade = gets.strip.to_i

    op_classe = 9
    puts "Selecione a classe a qual tu pertence:"
    classes = carrega_classes_estaticas 
    aux = 0

    classes.each do |classe|
        puts "#{aux} Classe -#{classe.nome_classe}"
        aux+=1
    end

    puts "qual?"
    op_classe = gets.strip.to_i

    personagem = Personagem.new nome, idade, raca
    
    personagem.to_s
end

# puts raca.nome
def primeiro_passo
    puts "Primeiro - selecione uma Raça:"
    puts "1 - Humano"
    puts "2 - Elfo"
    puts "3 - Orc"
    puts "4 - Anão"
    op_raca = gets.to_i

    if op_raca == 1
        raca = Humano.new
        puts "Tu escolheu #{raca.nome_raca}"
        segundo_passo raca
    elsif op_raca == 2
        raca = Elfo.new
        puts "Tu escolheu #{raca.nome_raca}"
        segundo_passo raca
    elsif op_raca == 3
        raca = Orc.new
        puts "Tu escolheu #{raca.nome_raca}"
        segundo_passo raca
    elsif op_raca == 4
        raca = Anao.new
        puts "Tu escolheu #{raca.nome_raca}"
        segundo_passo raca
    else 
        puts '###################################'
        puts '# Desculpa! Opção não disponivel. #'
        puts '###################################'
    end
end


op = 9
while op != 0
    puts "Tecle 0 pra sair."
    puts "1 para cadastrar personagem."
    puts "2 para cadadstrar classe."
    op = gets.to_i
    
    if op == 1 
        puts "Isira os dados de criação do seu personagem!"
        primeiro_passo
    elsif op == 0
        puts 'Saindo..'
    else
        puts '###################################'
        puts '# Desculpa! Opção não disponivel. #'
        puts '###################################'
    end
end