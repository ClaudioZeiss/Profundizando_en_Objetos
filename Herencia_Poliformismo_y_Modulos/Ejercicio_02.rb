#Ejercicio 2
module Habilidades
    module Volador
        def volar
            'Estoy volandooooo!'
        end
        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end

    module Nadador
        def nadar
            'Estoy nadando!'
        end
        def sumergir
            'glu glub glub glu'
        end
    end

    module Caminante
        def caminar
            'Puedo caminar!'
        end
    end
end

module Alimentacion
    module Herbivoro
        def comer
            'Puedo comer plantas!'
        end
    end
    
    module Carnivoro
        def comer
            'Puedo comer carne!'
        end
    end
end



class Animal
    attr_writer :nombre
    def initialize(nombre)
        @nombre = nombre
    end
end


class Ave < Animal
    include Habilidades
    include Alimentacion
end

class Mamifero < Animal
    include Habilidades
    include Alimentacion
end

class Insecto < Animal
    include Habilidades
    include Alimentacion
end

class Pinguino < Ave
    include Caminante
    include Nadador
    include Carnivoro
    def initialize (nombre)
        puts "#{nombre}"
        puts caminar
        puts comer
        puts nadar
        puts sumergir
    end
end

class Paloma < Ave
    include Caminante
    include Volador
    include Herbivoro
    def initialize (nombre)
        puts "#{nombre}"
        puts caminar
        puts volar
        puts aterrizar
        puts comer
    end        
end

class Pato < Ave
    include Caminante
    include Volador
    include Herbivoro
    include Nadador
    def initialize (nombre)
        puts "#{nombre}"
        puts caminar
        puts nadar
        puts volar
        puts aterrizar
        puts comer
    end      
end

class Perro < Mamifero
    include Caminante
    include Carnivoro
    def initialize (nombre)
        puts "#{nombre}"
        puts caminar
        puts comer
    end          
end

class Gato < Mamifero
    include Caminante
    include Carnivoro
    def initialize (nombre)
        puts "#{nombre}"
        puts caminar
        puts comer
    end          
end

class Vaca < Mamifero
    include Caminante
    include Herbivoro
    def initialize (nombre)
        puts "#{nombre}"
        puts caminar
        puts comer
    end          
end

class Mosca < Insecto
    include Volador
    include Herbivoro
    include Caminante
    def initialize (nombre)
        puts "#{nombre}"
        puts caminar
        puts comer
        puts volar
    end          
end

class Mariposa < Insecto
    include Volador
    include Herbivoro
    include Caminante
    def initialize (nombre)
        puts "#{nombre}"
        puts caminar
        puts comer
        puts volar
    end       
end

class Abeja < Insecto
    include Volador
    include Herbivoro
    include Caminante
    def initialize (nombre)
        puts "#{nombre}"
        puts caminar
        puts comer
        puts volar
    end       
end

system('clear')
Pinguino.new("Pinguino")
print "\n"
Paloma.new("Paloma")
print "\n"
Pato.new("Pato")
print "\n"
Perro.new("Perro")
print "\n"
Gato.new("Gato")
print "\n"
Vaca.new("Vaca")
print "\n"
Abeja.new("Abeja")
print "\n"
Mariposa.new("Mariposa")
print "\n"
Mosca.new("Mosca")
print "\n"
