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
        def comerP
            'Puedo comer plantas!'
        end
    end
    
    module Carnivoro
        def comerC
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
    include Habilidades::Volador
    include Habilidades::Nadador
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end

class Mamifero < Animal
    include Habilidades::Nadador
    include Habilidades::Caminante
    include Alimentacion
end

class Insecto < Animal
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
    include Alimentacion::Carnivoro
end

class Pinguino < Ave
    def initialize (nombre)
        puts "#{nombre}"
        puts caminar
        puts comerP
        puts nadar
        puts sumergir
    end
end

class Paloma < Ave
    def initialize (nombre)
        puts "#{nombre}"
        puts caminar
        puts volar
        puts aterrizar
        puts comerP
    end        
end

class Pato < Ave
    def initialize (nombre)
        puts "#{nombre}"
        puts caminar
        puts nadar
        puts volar
        puts aterrizar
        puts comerP
    end      
end


class Perro < Mamifero
    include Carnivoro
    def initialize (nombre)
        puts "#{nombre}"
        puts caminar
        puts comerC
    end          
end


class Gato < Mamifero
    include Carnivoro
    def initialize (nombre)
        puts "#{nombre}"
        puts caminar
        puts comerC
    end          
end

class Vaca < Mamifero
    include Herbivoro
    def initialize (nombre)
        puts "#{nombre}"
        puts caminar
        puts comerP
    end          
end


class Mosca < Insecto
    def initialize (nombre)
        puts "#{nombre}"
        puts caminar
        puts comerC
        puts comerP
        puts volar
    end          
end


class Mariposa < Insecto
    def initialize (nombre)
        puts "#{nombre}"
        puts caminar
        puts comerP
        puts volar
    end       
end

class Abeja < Insecto
    def initialize (nombre)
        puts "#{nombre}"
        puts caminar
        puts comerP
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
Mosca.new("Mosca")
print "\n"
Mariposa.new("Mariposa")
print "\n"
Abeja.new("Abeja")
print "\n"
