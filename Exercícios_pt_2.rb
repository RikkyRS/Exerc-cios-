# 1 cadastro simples de pessoa
def cadastro_pessoa
  pessoa = {}

  puts "     Cadastro de pessoa     "
  print "Digite seu nome: "
  pessoa[:nome] = gets.chomp

  print "Digite sua idade: "
  pessoa[:idade] = gets.chomp

  print "Digite sua cidade: "
  pessoa[:cidade] = gets.chomp

  return pessoa
end

pessoa = cadastro_pessoa

puts "#{pessoa[:nome]} tem #{pessoa[:idade]} anos e mora em #{pessoa[:cidade]}."

# 2 contar letras em uma palavra
 puts "Digite uma palavra: "
  palavra = gets.chomp
quantidade = Hash.new(0)

palavra.each_char do |char|
  next if char == " "
  quantidade[char] +=1
end
puts quantidade

# 3 catálogo de produtos 
catalogo = {}

3.times do
  puts "Digite o nome do produto:"
  nome = gets.chomp

  puts "Digite o preço do produto:"
  valor = gets.chomp.to_f

  catalogo[nome] = valor
end

puts " Catálogo Completo "
catalogo.each do |produto, valor|
  puts "#{produto} - R$#{valor}"
end

puts " Digite um valor máximo:"
valor_maximo = gets.chomp.to_f

puts " Produtos com preço menor ou igual a R$#{valor_maximo} "
catalogo.each do |produto, valor|
  if valor <= valor_maximo
    puts "#{produto} - R$#{valor}"
  end
end
# 4 dicionários de traduções 
dicionario_pt_en = {
  "cachorro" => "dog",
  "gato" => "cat",
  "casa" => "house"
}
puts "Digite uma palavra: "
palavra = gets.chomp.downcase
  if dicionario_pt_en.key?(palavra)
  puts dicionario_pt_en[palavra]
else
  puts "Palavra não cadastrada."
end
# 5 contagem de votos
votos = {
  "chocolate" => 0,
  "morango" => 0,
  "baunilha" => 0
}
puts " Votação de qual o melhor sorvete "
puts " As opção são: chocolate, baunilha e morango."
puts " Digite o seu sabor favorito e quando acabar digite 'fim'."

loop do 
  print "seu voto: "
  votacao = gets.chomp.downcase
  
  if votacao == "fim"
    break
   elsif votos.key?(votacao)
   votos[votacao] += 1
   puts "votos para #{votacao.capitalize} registrado com sucesso! "
   else
   puts "Opção inválida. Por favor, digite 'Baunilha', 'Chocolate', 'Morango' ou 'fim'."u
  end
end
puts "   Resultado da votação    "
votos.each do |sabor,quantidade|
 puts "#{sabor.capitalize}: #{quantidade} votos "
 end