class Patient
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appt)
    @appointments << appt
    appt.patient = self
  end

  def appointments
    @appointments
  end

  def doctors
    self.appointments.collect { |d| d.doctor}
  end


end
