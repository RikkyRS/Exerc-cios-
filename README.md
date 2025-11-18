# Exercícios
Exercícios em ruby
1 - Soma de números
Peça ao usuário 5 números, salve em um array e depois mostre:

	⁠A soma de todos os números
	⁠A média
	⁠O maior e o menor valor
  Resultado:
  numeros = []
print "Digite cinco número: "
5.times do |i|
print "numeros #{i+ 1}: "
input = gets.chomp.to_i
numeros << input
end
soma_total = numeros.sum
media = numeros.sum / numeros.length
maior_numero = numeros.max
menor_numero = numeros.min
print "A soma dos números é: #{soma_total} "
print "A média dos números é: #{media} "
print "O maior número é: #{maior_numero} e o menor é: #{menor_numero}"

2 - Filtrar números pares
Dado um array de números inteiros, crie um programa que:

	⁠Mostre apenas os números pares
	⁠Mostre a quantidade de números pares encontrados

Resultado:
numeros = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
numeros_pares = numeros.select {|numeros| numeros % 2 == 0}
quantidade = numeros_pares.length
print "Esses são os numeros pares #{numeros_pares} a quantidade encontrada foi #{quantidade}. "

3 - Remover duplicados
Dado um array com números repetidos, crie um programa que:

	⁠Crie um novo array apenas com valores únicos (sem repetição)
	⁠Mostre o array original e o array sem duplicados

Resultado:
numero =[1,1,2,2,3,3,4,4,5,5,6,6,7,7,7,8,9,9,10]
 numeros_sem_repeticao = numero.uniq
 puts "Esses são os numeros originais #{numero} e esse são os numeros sem repetição #{numeros_sem_repeticao} ."

 4 - Inverter array
Peça uma lista de nomes para o usuário (em uma única linha, separados por vírgula) e:

	⁠Coloque esses nomes em um array
	⁠Mostre os nomes na ordem inversa da digitada

Resultado :
print "Coloque uma lista de nomes, separados por virgula e na mesma linha. "
nomes_lista = gets.chomp
nomes_separados = nomes_lista.split(",")
nomes_sem_erros = nomes_separados.map(&:strip)
nomes_separados_reverse = nomes_sem_erros.reverse
print "Essa é a lista em ordem inversa #{nomes_separados_reverse}."

5 - Contar ocorrências
Dado um array de strings, conte quantas vezes cada string aparece.
Exemplo: ["maçã", "banana", "maçã", "laranja", "banana", "maçã"]
Resultado:
	⁠maçã: 3
	⁠banana: 2
	⁠laranja: 1

Resultado: 
nomes = ["maçã","banana","maçã","laranja","banana","maçã"]
contagem = nomes.inject(Hash.new(0)) do |hash_contagem, nome|
  hash_contagem[nome] += 1
  hash_contagem
end
puts contagem

6 - Notas dos alunos (array simples)
Crie um array com as notas de um aluno (por exemplo, 4 notas).

	⁠Calcule a média
	⁠Mostre se o aluno foi aprovado (média ≥ 7) ou reprovado

Resultado:
notas = [6,5,8,7]
media = notas.sum / notas.length
puts media
notas.each do |nota|
  if nota >= 7
    puts "Aprovado"
  else 
    puts "Reprovado"
  end
end

7 - Concatenar arrays
Peça ao usuário duas listas de números (separadas por vírgula) e:

	⁠Converta em dois arrays
	⁠Junte os dois em um único array
	⁠Remova números repetidos
	⁠Mostre o resultado final

Resultado: 
puts "Digite uma lista de numeros separados por virgulas:"
lista1_numeros =gets.chomp.split(",")
puts "Digite uma nova lista de numeros separados por virgulas: "
lista2_numeros = gets.chomp.split(",")
lista1 = lista1_numeros.map(&:to_i)
lista2 = lista2_numeros.map(&:to_i)
lista_completa = (lista1 + lista2).uniq
lista_ordenada = lista_completa.sort
puts "essa é a lista #{lista_completa}. "
puts "essa é a lista do menor para o maior: #{lista_ordenada}."
