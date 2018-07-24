# Defina un clase Bus:
# Que reciba el numero de asientos que tendrá el bus e inicia la velocidad en cero al crearse una instancia.
# Un metodo que permita acelerar, el método recibe el numero de km que acelera
# Un metodo que permita frenar.
# Un método que permita agregar pasajeros, si esta lleno que no permita recibir más.
# Un metodo que permita descargar pasajeros.

class Bus
    
    attr_reader :velocidad, :asientos
    attr_accessor :pasajeros
    
    def initialize(asientos)
        @asientos = asientos
        @velocidad = 0
        @pasajeros = 0
    end

    def acelerar(km)
        @velocidad += km
    end

    def frena(km)
        @velocidad -= km
    end

    def sube(asientos)
        while @pasajeros  

        end

    end
end
p1 = Bus.new(10)

puts p1.asientos

p1.acelerar(rand(1..100))
puts p1.velocidad

p1.frena(20)
puts p1.velocidad

