# Defina una clase Teléfono con la que se pueda:
class Phone

        @@call_duration = 0
        @@phones = 0

       attr_accessor :call, :bussy, :name, :directory, :tel

    def initialize
        @call = true
        @bussy = false
        @name = ""
        @tel = 0
        @directory = {}
    end

    # 1. hacer un llamada (no se puede hacer una llamada si el teléfono esta ocupado)

    def make_call (directory)
        if @bussy = false
        puts "Ingresa el nombre del contacto"
        @name = gets.chomp
        puts "Ingresa el numero de telefono"
        @tel = gets.chomp.to_i
        
        end
    end

# 2. mostrar llamada actual (nombre y numero)
    def on_call ()

    end

# 3. colgar
    def finish_call()
    
    end
    
# 4. mostrar historial de llamadas, cada llamada almacena la duración de la misma.
    def call_history()
    
    end

end    





# 5. Variable de clase que permita contar el numero de dispositivos creados con la clase, y un metodo que permita leerla desde la clase.
# 6. Una variable de clase que acumule el tiempo total de todas las llamadas hechas, y un metodo que te permita leerla desde la clase.
