pessoas = []
def cadastrar nome, sexo
    pessoa={:nome => nome.strip, :sexo => sexo.strip}
    return pessoa
end
#Povoando array com hashs de pessoa
p = cadastrar 'josepher', 'M'
pessoas << p
p = cadastrar 'jose', 'M' 
pessoas << p
p = cadastrar 'rita', 'F'
pessoas << p
p = cadastrar 'Anita', 'F'
pessoas << p
p = cadastrar 'Maluco', 'Não informado!'
pessoas << p

op = 5

while (op.to_i != 0) 
    
    puts "Escolha uma opção:"
    puts "1 - Cadastrar pessoa."
    puts "2 - Listar por Sexo."
    puts "0 - Sair"
    op =  gets.to_i

    if (op == 1)
        
        puts "Cadastrar Pessoa"
        puts "Insira um nome"
        nome = gets
        
        puts "Qual o seu sexo"
        puts "1 - Masculino"
        puts "2 - Feminino"
        s = gets.to_i
        
        if s == 1
            sexo = "M"
        elsif s = 2
            sexo = "F"
        else
            sexo = "Não informado!"
        end
        
        puts "Cadastrando..."
        p = cadastrar nome, sexo
        
        if p != nil 
            puts "Cadastrado com sucesso"
            pessoas << p
        end

    elsif (op == 2)
        puts "Listar por Sexo"
        puts "Escolha: "
        puts "1 - Masculino"
        puts "2 - Feminino"
        puts "3 - !?"
        qual_sexo = gets.to_i

        if qual_sexo == 1 
            puts "Pessoas do sexo MASCULINO"
            pessoas.each do |p|
                if p[:sexo] == "M"
                    puts "Pessoa: #{p[:nome]} Sexo: #{p[:sexo]}"  
                end
            end
        elsif qual_sexo == 2
            puts "Pessoas do sexo FEMININO"
            pessoas.each do |p|
                if p[:sexo] == "F"
                    puts "Pessoa: #{p[:nome]} Sexo: #{p[:sexo]}"  
                end
            end
        else
            puts "Pessoas que NÃO INFORMARAM o seu sexo "
            pessoas.each do |p|
                if p[:sexo].strip == "Não informado!" 
                    puts "Pessoa: #{p[:nome]} Sexo: #{p[:sexo]}"  
                end
            end
        end
    else
        puts "Saindoo..."
    end
end