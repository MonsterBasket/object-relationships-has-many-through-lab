class Appointment
  attr_accessor :appointment, :doctor, :patient
  @@all = []

  def initialize(appointment, patient, doctor)
    @appointment = appointment
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end
end