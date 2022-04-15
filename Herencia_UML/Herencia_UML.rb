
# Parte 1: Creacion de la SuperClase
class Appointment
    attr_reader :location, :purpose, :hour, :min
    def initialize (location, purpose, hour, min)
        @location = location
        @purpose = purpose
        @hour = hour
        @min = min
    end

end


# Parte 2: 
class MonthlyAppointment < Appointment
    attr_reader :day
    def initialize  (location, purpose, hour, min, day)
        #super-> Trae las variables de instancia de la SuperClase
        super(location, purpose, hour, min)
        @day = day        
    end

    def ocurrs_on?(day)
        day == @day
    end

    def to_s
        "Reunion mensual en #{@location} sobre #{@purpose} el dia #{@day} a la(s) #{@hour}:#{@min}."
    end

end

class DailyAppointment < Appointment

=begin
        def initialize  (hour, min)
        #super-> Trae las variables de instancia de la SuperClase
        super(location, purpose, hour, min)
    end
=end

    def ocurrs_on?(hour,min)
        min == @min && hour == @hour
    end

    def to_s
        "Reunion diaria en #{@location} sobre #{@purpose} a la(s) #{@hour}:#{@min}."
    end

end

class OneTimeAppointment < Appointment
    attr_reader :day, :month, :year
    def initialize(location, purpose, hour, min, day, month, year)
        super(location, purpose, hour, min)
        @day = day
        @month = month
        @year = year
    end

    def ocurrs_on?(day,month,year)
    day == @day && month == @month && year = @year
    end

    def to_s
        "Reunión única en #{@location} sobre #{@purpose} el #{@day}/#{@month}/#{@year} a la(s) #{@hour}:#{@min}."
    end
end


#puts MonthlyAppointment.new('NASA', 'Aliens', 8, 15, 23)

#cita_01 = MonthlyAppointment.new('Disney','Mickey',9,45,27)
#puts cita_01.ocurrs_on?(3)
puts "OneTimeAppointment\n"
puts OneTimeAppointment.new('Desafío Latam', 'Trabajo', 14, 30, 4, 6, 2019)

puts "DailyAppointment\n"
puts DailyAppointment.new('Desafío Latam', 'Educación', 8, 15)

puts "MonthlyAppointment\n"
puts MonthlyAppointment.new('NASA', 'Aliens', 8, 15, 23)