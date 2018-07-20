# str = "Hola mundo"
#
# chars = str.chars
#
# chars.each do |c|
#   puts c
#   end
#
#   "Hola mundo".split(" ")
#
#   "prueba, separar, cadenas".split(",")
#
#   puts ["hola","mundo"].join("--")
#
#   puts "a"*5
#   puts "".empty?
#   puts "hola mundo".gsub("mund","german")
#
#   puts "Hola".upcase #HOLA
#   puts "Hola".downcase#hola
#
#   a = "hello"
#   a << "world"
#
# puts a + " " + "world"
#
# a[1]
# a[2, 3]#extrae de la posicion dos tres posiciones mas
# a[2..3] #extrae del dos al 3
#
# print "string\n"
# print "string\n".chop
# print "last line"
#
# a.chr
# p a.chr
# p a.count('l')
#
# puts "Escriba una palabra"
#
# palabra = gets.chomp
#
#   puts "El texto es: #{palabra.reverse.upcase}"

puts "Escribe una palabra para saber si es palindrome"

palabra1 = gets.chomp

palabra2 = palabra1.reverse

if palabra1==palabra2
  puts "Es palindrome"
else
  puts "No es palindrome"
end
