def soma ini, fim
    if ini < fim
        res = ini
        while ini<fim
            ini+=1
            res +=ini
        end
        return res
    else
        res = fim
        while fim<ini
            fim +=1
            res +=fim
        end
        return res
    end
end

puts "Soma dos numeros no intervalo de 1 a 5 = #{soma 1, 5}"
puts "Soma dos numeros no intervalo de 100 a 5 = #{soma 100, 5}"
puts "Soma dos numeros no intervalo de 8 a 60 = #{soma 8, 60}"
puts "Soma dos numeros no intervalo de 55 a 200 = #{soma 55, 200}"