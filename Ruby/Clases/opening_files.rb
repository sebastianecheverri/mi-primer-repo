# file = file.read("student")
#
# file_as_array =
#
# if file.file?("students2.txt")
#   puts "existe"
# else
#   puts "no existe"
# end
#
# File.write("bd/students.txt", "juan camilo") #sobreescribir un archivo sobre la ruta


# programa debe arbrir un archivo que exista, tomar el contenido y pegarlo en otro archivo

# copiar=File.read("archivo1.txt")
#
# File.write("archivo2.txt", "#{copiar}")

file_as_array = IO.readlines("directorio.txt")

file_as_array.each do |numero|
  puts numero
end





#Abre el archivo para añadir contenido
# archivo = File.new(“texto.txt”, “a”)
#
# archivo.puts “Sed quam urna, fringilla sit amet lacinia eget, hendrerit at ligula. Pellentesque tortor lectus, pretium vel dictum mollis, molestie sit amet turpis. Aenean blandit dui vitae elit porta fermentum. Nulla interdum congue felis, sed semper lectus sagittis pretium.”
#
# archivo.close
#
# File.open(“texto.txt”).each{|linea| puts linea}
#
# print “Desea eliminar el archivo? S/n: ”
# opcion = gets.chomp
#
# if opcion.downcase == ‘s’
