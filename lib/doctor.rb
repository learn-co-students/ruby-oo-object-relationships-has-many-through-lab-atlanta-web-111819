class Doctor 
    attr_accessor :name 
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all 
        @@all 
    end 

    #remember to put in correct order LMAO

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end 

    def appointments
        Appointment.all.select do |appointment|
            appointment.doctor == self 
        end 
    end 

    def patients
        appointments.map do |appts|
            appts.patient
        end 
    end 


end 