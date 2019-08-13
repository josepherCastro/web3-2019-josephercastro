puts "Digite seu nome completo"
nome_completo = gets.strip

nome_quebrado = nome_completo.split(" ")

puts "#{nome_quebrado.first} #{nome_quebrado.last}"