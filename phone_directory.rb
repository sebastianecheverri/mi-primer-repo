# Escriba un programa que tenga lo siguiente:
# 1. Un método que permita Importar un archivo de texto el cual contiene en cada linea nombre y teléfono (separado por punto y coma), la información debe ser importada a un hash llamado “directorio”
# 2. Un método que permita imprimir todo los nombres y usuarios del directorio.
# 3. Que tenga un método que permita agregar un usuario con su respectivo telefono al hash “directorio” y también al archivo de texto.
# 4. Que tenga un metodo que reciba el nombre del usuario y retorne su teléfono.
# 5. Al ejecutarse el programa se carga automáticamente el archivo de texto, debe preguntarle que quiere hacer:  Agregar un teléfono, Buscar un teléfono,  imprimir el directorio completo ó salir.

directorio = hash.new.split(",")
    directorio[File.read("directorio.txt")]=

puts "Bienvenido al Directorio Telefónico"
puts "¿Que deseas hacer?"
puts "1. Agregar un teléfono"
puts "2. Buscar un teléfono"
puts "3. Ver el directorio"
puts "Selecciona una opción"
numero = gets.chomp.to_i

case numero
     when 1 then  
         print "Ingresa el nombre: "
         nuevo_nombre = gets.chomp
         print "Ingresa el numero: "
         nuevo_numero = gets.chomp.to_i
         directorio.join   
     when 2 then 
         puts "elegiste 2"
     when 3 then 
         puts "elegiste 3"
     else
         puts "Error al ingresar la opción"
 end

