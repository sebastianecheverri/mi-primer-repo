# Defina una clase Teléfono con la que se pueda:
class Phone
attr_accessor :busy

        @@call_duration = 0
        @@devices = 0


    def initialize
        @busy = false
        @history = []
        @current_call = {}
    end

    # 1. hacer un llamada (no se puede hacer una llamada si el teléfono esta ocupado)
    # en las current_call quedan guardadas las llamadas en un hash, y su vez estas quedan guardadas en history que sera un array de hashes


    # def make_call(name,tel)
    #     return puts "Telefono ocupado" if @busy
    #         if phone.to_s.length == 10
    #             @busy = true
    #             puts "Llamando al #{phone}..."
    #             sleep 3
    #             @current_call = create_call(phone)
    #             puts "Numero equivocado"
    #         else
    #             puts "Numero equivocado"
    #     end
    # end

# 2. mostrar llamada actual (nombre y numero)
    #  def colgar
    #     return puts "Telefono disponible" unless @busy
    #     @current_call[:duration] = duration.round(2)
    #     add_to_history(@current_call)
        
    #  end

# 3. colgar
    # def finish_call()
    
    # end
    
# 4. mostrar historial de llamadas, cada llamada almacena la duración de la misma.
    # def call_history()
    
    # end

end    





# 5. Variable de clase que permita contar el numero de dispositivos creados con la clase, y un metodo que permita leerla desde la clase.
# 6. Una variable de clase que acumule el tiempo total de todas las llamadas hechas, y un metodo que te permita leerla desde la clase.
