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

  def appointments
    Appointment.all.select {|a| a.doctor.name == name}
  end

  def new_appointment(date, patient)
    Appointment.new date, patient, self
  end

  def patients
    appointments = []
    self.appointments.select { |a| appointments << a.patient}
    appointments.uniq
  end
end