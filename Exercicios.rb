# Exercícios
# Exercício 1 - Soma de números
numeros = []
print "Digite cinco número: "
5.times do |i|
  print "numeros #{i + 1}: "
  input = gets.chomp.to_f
  numeros << input
end
soma_total = numeros.sum
media = numeros.sum / numeros.length
maior_numero = numeros.max
menor_numero = numeros.min
print "A soma dos números é: #{soma_total} "
print "A média dos números é: #{media} "
print "O maior número é: #{maior_numero} e o menor é: #{menor_numero}"

# Exercício 2 - Filtrar números pares
numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
numeros_pares = numeros.select { |numeros| numeros % 2 == 0 } #GRAMATICAMENTE NAO É |NUMEROS| E SIM |NUMERO| PQ ELE TRATA UM NUMERO DE CADA VEZ
quantidade = numeros_pares.length
print "Esses são os numeros pares #{numeros_pares} a quantidade encontrada foi #{quantidade}. "

# Exercício 3 - Remover duplicados
numero = [1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 7, 8, 9, 9, 10]
numeros_sem_repeticao = numero.uniq
puts "Esses são os numeros originais #{numero} e esse são os numeros sem repetição #{numeros_sem_repeticao} ."

# Exercício 4 - Inverter array
print "Coloque uma lista de nomes, separados por virgula e na mesma linha. "
nomes_lista = gets.chomp
nomes_separados = nomes_lista.split(",")
nomes_sem_erros = nomes_separados.map(&:strip)
nomes_separados_reverse = nomes_sem_erros.reverse
print "Essa é a lista em ordem inversa #{nomes_separados_reverse}."

# Exercício 5 - Contar ocorrências
nomes = ["maçã", "banana", "maçã", "laranja", "banana", "maçã"]
contagem = nomes.inject(Hash.new(0)) do |hash_contagem, nome|
  hash_contagem[nome] += 1
  hash_contagem
end
puts contagem

# Exercício 6 - Notas dos alunos
notas = [6, 5, 8, 7]
media = notas.sum / notas.length
puts media
notas.each do |nota|
  if nota >= 7
    puts "Aprovado"
  else
    puts "Reprovado"
  end
end

# Exercício 7 - Concatenar arrays
puts "Digite uma lista de numeros separados por virgulas:"
lista1_numeros = gets.chomp.split(",")
puts "Digite uma nova lista de numeros separados por virgulas: "
lista2_numeros = gets.chomp.split(",")
lista1 = lista1_numeros.map(&:to_i)
lista2 = lista2_numeros.map(&:to_i)
lista_completa = (lista1 + lista2).uniq
lista_ordenada = lista_completa.sort
puts "essa é a lista #{lista_completa}. "
puts "essa é a lista do menor para o maior: #{lista_ordenada}."