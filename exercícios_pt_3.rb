# 1 Lista de alunos com notas
alunos = [
  { nome: "Ana", nota: 8.5 }
 ]
3.times do 
  puts "Digite o nome do aluno: "
   nome = gets.chomp
  puts "Digite a nota do aluno: "
   nota = gets.chomp.to_f
 alunos << {nome: nome, nota: nota}
end
media = alunos.sum{|n| n[:nota]} / alunos.length
aluno_maior = alunos.max_by {|n| n[:nota] }
aluno_menor = alunos.min_by {|n| n[:nota] }
puts " A média das notas é: #{media}"

puts "O aluno com a maior nota é #{aluno_maior[:nome].capitalize}}, com nota #{aluno_maior[:nota]}"
puts "O aluno com a menor nota é #{aluno_menor[:nome].capitalizeu}, com nota #{aluno_menor[:nota]}"
# 2 Carrinho de compras 
carrinho_compras = []

puts "Cadastro de produto: "
loop do 
  puts "Digite o nome do produto (ou deixe vazio para parar): "
  nome = gets.chomp
  break if nome == ""

  puts "Digite o preço do produto: "
  preco = gets.chomp.to_f

  puts "Digite a quantidade: "
  quantidade = gets.chomp.to_i

  carrinho_compras << { nome: nome, preco: preco, quantidade: quantidade }

  puts "Deseja adicionar outro item ? (s/n)"
  continuar = gets.chomp.downcase
  break if continuar == "n"
end

soma_total = carrinho_compras.sum do |item|
  item[:preco] * item[:quantidade]
end

puts " O valor total ficou R$#{soma_total}."
puts "Itens cadastrados: "
carrinho_compras.each do |item|
  puts " #{item[:nome].capitalize} (#{item[:quantidade]} unidades)"
end
# 3 Agenda de contatos
agenda_de_contato = [
  nome: "João", numero: "9999-9999"
]
loop do 
  puts "Digite um nome: "
   nome = gets.chomp.downcase
   break if nome == ""
  puts "Digite um numero: "
   numero = gets.chomp
   agenda_de_contato << {nome: nome, numero: numero }
   puts "Deseja adicionar outro número (s/n)?"
   continuar = gets.chomp.downcase
   break if continuar == "n"
  end
 
 puts "Digite o nome da pessoa que deseja procurar ?"
 nome_lista = gets.chomp.downcase
 contato_encontrado = agenda_de_contato.find { |c| c[:nome] == nome_lista }
 if contato_encontrado
   puts "#{contato_encontrado[:nome].capitalize} -> #{contato_encontrado[:numero]}"
 else " Contato não encontrado"
 end