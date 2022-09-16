class Patient
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    Appointment.new date, self, doctor
  end

  def appointments
    Appointment.all.select{ |a| a.patient.name == name}
  end

  def doctors
    doctors = []
    self.appointments.map {|a| doctors << a.doctor}
    doctors.uniq
  end
end