# def hello
#   "Hola mundo"
# end
#
# puts hello()


def agrega (nombre,numero)
  @


end

@directorio = {}
nombre = ""
num_tel = ""

until nombre == "quit" || num_tel == "quit"

    puts "Ingrese su nombre:"
      nombre = gets.chomp
      break if nombre== "quit"
    puts "Ingrese su telefono:"
      num_tel = gets.chomp.to_i
      break if num_tel=="quit"

directorio[nombre]=num_tel
end

puts directorio
