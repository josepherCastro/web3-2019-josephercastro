require_relative './tipos_raca'
require_relative './personagen'
require_relative './classe'

$personagens_salvos = []
$classes_salvas = []

def carrega_classes_estaticas
    classses = [] 
    classses.append Classew.new 'Construtor', 'Construir casas', {forca: 1, inteligencia: 1, vida: -2, ataque: 0, defesa: 0}
    classses.append Classew.new 'Ferreiro', 'Construir espadas e armaduras', {forca: 2, inteligencia: 0, vida: 0, ataque: 1, defesa: 0}
    classses.append Classew.new 'Curandeiro', 'Curar outras unidades', {forca: 3, inteligencia: 3, vida: 0, ataque: -1, defesa: 0}
    classses.append Classew.new 'Guerreiro', 'Atacar e defender', {forca: 2, inteligencia: 1, vida: 0, ataque: 3, defesa: 0}
    
    classses
end
def cadastra_classe
    puts 'Nome da classe a ser criada:'
    nome_classe = gets.strip.to_s
    puts 'Habilidade da classe'
    habilidade = gets.strip.to_s

    puts 'Adicionando modificadores'
    puts "Forca:"
    forca_classe = gets.to_i
    puts "Vida:"
    vida_classe = gets.to_i
    puts "Ataque:"
    ataque_classe = gets.to_i
    puts "Inteligencia:"
    inteligencia_classe = gets.to_i
    puts "Defesa:"
    defesa_classe = gets.to_i

    modificadores = {forca: forca_classe, inteligencia: inteligencia_classe, vida: vida_classe, ataque: ataque_classe, defesa: defesa_classe}
    classe = Classew.new nome_classe, habilidade, modificadores
    $classes_salvas << classe
    puts "Salvando classe #{classe.to_s}..."
    sleep(2)
end
def buscador_classes op_classe
    if op_classe != 0
        indice = 0
        $classes_salvas.each do |classe|
            indice+=1
            if op_classe == indice
                return classe
            end
        end
    else
        indice = 0
        $classes_salvas.each do |classe|
            indice+=1
            puts "#{indice} - classe #{classe.nome_classe}."
        end
    end
end
def segundo_passo raca
    puts "Ainda sobre seu personagem!"
    puts "Nome:"
    nome = gets.strip.to_s
    puts "Idade:"
    idade = gets.strip.to_i

    flag = 0
    while flag == 0
        puts "Escolha a classe a qual seu personagem pertence:"
        op_classe = 0
        buscador_classes 0
        op_classe = gets.strip.to_i
        
        if (op_classe > 0) && (buscador_classes op_classe != nil)
            indice = 0
            classe = buscador_classes op_classe
            if classe != nil
                puts "\033[32mClasse #{classe.nome_classe} selecionada!\nSalvando dados do personagem..."
                personagem = Personagem.new nome, idade, raca, classe
                $personagens_salvos << personagem
                flag = 1
                sleep(2)
                personagem.to_s
                puts "Salvo com sucesso!\033[0;0m"
            else
                puts 'Erro na definição da classe!'
            end
        else
            puts '###################################'
            puts '# Desculpa! Opção não disponivel. #'
            puts '###################################'
        end 
    end
end
def selecao_raca flag
    puts "Primeiro - selecione uma Raça:"
    puts "1 - Humano"
    puts "2 - Elfo"
    puts "3 - Orc"
    puts "4 - Anão"
    op_raca = gets.to_i

    if op_raca == 1
        raca = Humano.new
        if flag == 0
            puts "\033[32mTu escolheu #{raca.nome_raca}! \033[0;0m"
            segundo_passo raca
        else
            return raca
        end
    elsif op_raca == 2
        raca = Elfo.new
        if flag == 0
            puts "\033[32mTu escolheu #{raca.nome_raca}! \033[0;0m"
            segundo_passo raca
        else
            return raca
        end
    elsif op_raca == 3
        raca = Orc.new
        if flag == 0
            puts "\033[32mTu escolheu #{raca.nome_raca}! \033[0;0m"
            segundo_passo raca
        else
            return raca
        end
    elsif op_raca == 4
        raca = Anao.new
        if flag == 0
            puts "\033[32mTu escolheu #{raca.nome_raca}! \033[0;0m"
            segundo_passo raca
        else
            return raca
        end
    else 
        puts '###################################'
        puts '# Desculpa! Opção não disponivel. #'
        puts '###################################'
    end
end
def area_de_treino 
    puts "Qual personagem tu quer treinar?"
    
    indice = 0
    $personagens_salvos.each do |personagem|
        indice+=1
        puts "################### \033[31m #{indice} \033[0;0m ###################" 
        personagem.to_s
        puts '================================================'
    end
    op_personagem = gets.to_i 

    puts "Qual Classe tu queres adiquirir com o treinamento?"
    buscador_classes 0
    op_classe = gets.to_i

      
    numero_sorte = rand(6)
    puts "Tu precisa tirar #{numero_sorte} para adquirir essa classe."
    
    if numero_sorte == rand(6)
        indice = 0
        $personagens_salvos.each do |personagem|
            indice+=1
            if op_personagem == indice
                puts "\033[31m*** Personagem antes do treino ***"
                personagem.to_s
                puts "\033[0;0m"
                def personagem.treinado classe
                    @classes << classe
                    @vida = raca.vida + classe.modificadores[:vida]
                    @ataque = raca.ataque + classe.modificadores[:ataque]
                    @defesa = raca.defesa + classe.modificadores[:defesa]
                    @inteligencia = raca.inteligencia + classe.modificadores[:inteligencia]
                    @forca = raca.forca + classe.modificadores[:forca]
                end
                classe = buscador_classes op_classe
                personagem.treinado classe
                puts "\033[32m*** Personagem pós treino ***"
                personagem.to_s
                puts "\033[0;0m"
            end
        end
    else
        puts 'Não foi desta vez!!!'
        sleep(2)
    end
    
end
def mostra_atributos_calculados personagem
    puts '##########################################################################'
    puts "Personagem #{personagem.nome_personagem}\nRaca #{personagem.raca.nome_raca}\nClasses:"
    personagem.classes.each do |classe|
        classe.to_s
    end
    puts "Forca total: #{personagem.forca}\nAtaque total: #{personagem.ataque}\nDefesa total: #{personagem.defesa}"
    puts '##########################################################################'
end
def buscador_personagens
    puts "Listar personagens por: \n1 - Raca\n2 - Classe"
    op_busca = gets.to_i
    
    if op_busca == 1
        op_busca_raca = selecao_raca 1
        cont = 0
        $personagens_salvos.each do |personagem|
            if personagem.raca.nome_raca == op_busca_raca.nome_raca
                mostra_atributos_calculados personagem
                cont+=1
            end
        end
        if cont == 0
            puts "Não há personagens cadastrados com essa raça!"
        end
    elsif op_busca == 2
        puts 'Escolha uma classe:'
        buscador_classes 0
        op_busca_classe = buscador_classes gets.to_i
        cont = 0
        $personagens_salvos.each do |personagem|
            personagem.classes.each do |classe|
                if classe.nome_classe == op_busca_classe.nome_classe
                    mostra_atributos_calculados personagem
                    cont+=1
                end
            end
        end
        if cont == 0
            puts "Não há personagens cadastrados pertencente à essa classe!"
        end
    else
        puts '###################################'
        puts '# Desculpa! Opção não disponivel. #'
        puts '###################################'
    end
end
op = 9
$classes_salvas = carrega_classes_estaticas
while op != 0

    puts "\033[31m************RPG**************\033[0;0m\nTecle 0 pra sair."
    puts '1 - Para Cadastrar Personagem.'
    puts '2 - Para Cadastrar classe.'
    puts '3 - Para Treino de Personagens'
    puts '4 - Listar personagem'
    op = gets.to_i
    
    if op == 1 
        puts "\033[31mIsira os dados de criação do seu personagem!\033[0;0m"
        selecao_raca 0
    elsif op == 2
        puts "\033[31mCadastrando uma nova classe\033[0;0m"
        cadastra_classe
    elsif op == 3
        puts "\033[31mBora treinar e adiquirir algumas abilidades!\033[0;0m"
        area_de_treino
    elsif op == 4
        puts "\033[31m Listar Personagens \033[0;0m"
        buscador_personagens
    elsif op == 0
        puts 'Saindo..'
    else
        puts '###################################'
        puts '# Desculpa! Opção não disponivel. #'
        puts '###################################'
    end
end