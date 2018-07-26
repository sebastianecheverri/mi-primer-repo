require 'phone'

class MicroBus < Bus
    attr_accessor :rutas

    def initialize(asientos, rutas)
        @rutas = rutas
    end

    def rutas (rutas)
        

    end
end

# class SuperBus < Bus
#     attr_accessor :pasajeros, :velocidad, :asientos, :disponible, :nombre_ruta1, :nombre_ruta2
# end

p3 = MicroBus.New(25)

puts p3.asientos



