class Person
    def initialize(first, last, age)
        @first_name = first
        @last_name = last
        @age = age
    end

    def birthday
        @age += 1
    end
end

class Student < Person
    def talk
       "Aquí es la clase de programación con Ruby?"
    end
    def introduce
        "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
    end
end

class Teacher < Person
    def talk
        "Bienvenidos a la clase de programación con Ruby!"
    end
    def introduce
        "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
    end
end

class Parent < Person
    def talk
        "Aquí es la reunión de apoderados?"
    end
    def introduce
        "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
    end
end


persona_01=Student.new("Claudio","Zeiss",45)
persona_02=Teacher.new("Juan","Perez",33)
persona_03=Parent.new("Monica","Santiago",43)

puts "Student \n"
puts persona_01.talk
puts persona_01.introduce

puts "Teacher \n"
puts persona_02.talk
puts persona_02.introduce

puts "Parent \n"
puts persona_03.talk
puts persona_03.introduce
