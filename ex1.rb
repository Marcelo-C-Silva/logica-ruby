def media_notas(notas)
    soma_notas = notas.sum(&:to_f)
    media = (soma_notas) / notas.size   
end
def resultado(media)
    if media >=8
        return "Aprovado"
    else
       return "Reprovado" 
    end
    
end

def descricao_completa(nome_completo, curso, media, resultado)
    {:nome_completo => nome_completo,
    :curso => curso,
    :media => media,
    :resultado => resultado(media)}

end
puts "Coloque seu primeiro nome:"
nome = gets.chomp
puts "Agora coloque seu segundo nome:"
sobrenome = gets.chomp
nome_completo = "#{nome.capitalize} #{sobrenome.capitalize}"
puts "Insira o nome do seu curso:"
curso = gets.chomp
puts "Coloque as notas do aluno separadas por virgulas."
puts "EX: (7.5, 8.0, 6.5)"
notas = gets.chomp.split(",")
media = media_notas(notas)


puts descricao_completa(nome_completo, curso, media, resultado(media))