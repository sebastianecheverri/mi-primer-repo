# Defina un clase Bus:
# Que reciba el numero de asientos que tendrá el bus e inicia la velocidad en cero al crearse una instancia.
# Un metodo que permita acelerar, el método recibe el numero de km que acelera
# Un metodo que permita frenar.
# Un método que permita agregar pasajeros, si esta lleno que no permita recibir más.
# Un metodo que permita descargar pasajeros.
# Declare dos clases adicionales que hereden de la clase Bus, llamadas MicroBus y SuperBus
    # La clase MicroBus debe poder hacer todo lo q hace el Bus y ademas:
    # - Al instanciarse recibe el un hash del tipo { nombre_ruta1: "6-9", nombre_ruta2: "9-12" ...} 
    # - un metodo que reciba la hora y te diga la ruta en la que se encuentra.
    # La clase SuperBus debe poder hacer todo lo q hace el Bus y ademas:
    # - Al instanciarse recibe el precio del ticket de viaje.
    # - Un metodo que retorne el dinero total acumulado por la instancia del SuperBus
    # - Un atributo y metodo de clase que retorne el total de dinero acumulado por todos las instancias de SuperBus

class Bus
    @@total_pasajeros = 0

    attr_reader :velocidad, :asientos, :disponible
    attr_accessor :pasajeros
    
    def initialize(asientos)
        @asientos = asientos
        @velocidad = 0
        @pasajeros = 0
        @disponible = asientos
    end

    def self.total_pasajeros
        @@total_pasajeros
    end

    def acelerar(km)
        @velocidad += km
    end

    def frena(km)
        @velocidad -= km
    end

    def sube(personas)
        if (@pasajeros + personas) <= @disponible
            @disponible -= personas
            @pasajeros += personas
            @@total_pasajeros += personas
            puts "Entraron #{personas}, y quedan #{@disponible} asientos disponibles"
        else
            puts "Sólo hay disponibles #{@disponible} asientos"
        
        end

    end

     def baja(personas)
        if @velocidad ==  0
            @pasajeros -= personas
            @disponible += personas
            puts "Se bajaron #{personas}, y queda #{@disponible} asientos disponibles"
        else
            puts "El bus se encuentra en movimiento"
        end
    end
end

p1 = Bus.new(30)

puts p1.asientos

p1.acelerar(rand(1..100))
puts p1.velocidad

p1.frena(20)
puts p1.velocidad

p1.sube(5)
puts p1.disponible

p1.sube(3)
puts p1.disponible

p1.sube(30)
puts p1.disponible

p2 = Bus.new(50)

puts p2.asientos

p2.acelerar(rand(1..100))
puts p2.velocidad

p2.frena(0)
puts p2.velocidad

puts Bus.total_pasajeros

p2.sube(5)
puts p2.disponible

p2.baja(4)

p2.frena(0)

p2.baja(5)

class MicroBus < Bus
    attr_accessor :rutas

    def initialize(asientos, rutas)
        super(asientos)
        @rutas = rutas
    end

    def ruta_actual(time)
        @rutas.each do |ruta, horario|
            if horario.include?(time)
               return puts "La ruta es #{ruta}"
            end

        end
        puts "No hay rutas a esa hora"
    end
end

# class SuperBus < Bus
#     attr_accessor :pasajeros, :velocidad, :asientos, :disponible, :nombre_ruta1, :nombre_ruta2
# end

p3 = MicroBus.new(25, {ruta_sur: Array(6..9), ruta_norte: Array(10..12)})

puts p3.ruta_actual(11)

module Conexiones