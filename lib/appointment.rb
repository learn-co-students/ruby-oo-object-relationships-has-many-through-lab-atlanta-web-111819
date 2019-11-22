class Appointment

    attr_reader :date, :patient, :doctor

    @@all = []

    def initialize(date, patient, doctor)
        @doctor = doctor
        @date = date
        @patient = patient

        @@all << self
    end

    def self.all
        @@all
    end
end