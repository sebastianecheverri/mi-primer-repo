# persona = Hash.new
# persona2 = {}

# persona = { "nombre" => "Germán", "apellido" => "Escobar", "edad" => 34, "estatura" => 1.8 }

# p persona["nombre"]

# statuses = { 0 => "encendido", 1 => "apagado", 2 => "fundido" }

# p statuses[1]

# persona["peso"] = 65

# p persona

# persona.each do |llave, valor|
#   puts "#{llave}: #{valor}"
# end

# p persona.length
# p persona.has_key?(:apellido)
# p persona.keys
# p persona.values


# persona2 = {nombre: "Juan Camilo", apellido: "Hdz", edad: 27, estatura: 1.8}

# p persona2[:nombre]



# persona2.delete(:estatura)

# persona2.delete_if { |key,value| value == 27 }
# persona2.empty?
# persona2.has_value?(value)
# persona2.merge(persona)
# persona2.replace(other_hash)
# persona2.clear
# persona2.empty?

#  File.open('directorio.txt', 'r') do |f1|
#      while linea = f1.gets
#        puts linea
#      end
#    end

#   # Crea un nuevo fichero, y escribe
# File.open('directorio.txt', 'w') do |f2|
#     # '\n' es el retorno de carro
#     f2.puts "Por que la vida \n puede ser maravillosa"
#   end

class Book
    attr_reader :author, :title
  
    def initialize(author, title)
      @author = author
      @title = title
    end
  
    def ==(other)
      self.class === other and
        other.author == @author and
        other.title == @title
    end
  
    alias eql? ==
  
    def hash
      @author.hash ^ @title.hash # XOR
    end
  end
  
  book1 = Book.new 'matz', 'Ruby in a Nutshell'
  book2 = Book.new 'matz', 'Ruby in a Nutshell'
  
  reviews = {}
  
  reviews[book1] = 'Great reference!'
  reviews[book2] = 'Nice and compact!'
  
  reviews.length #=> 1