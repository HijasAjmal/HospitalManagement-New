class Slot < ActiveRecord::Base
  belongs_to :timeslot
  has_many :appointment


  def self.findSlotDate(msg)
		@slot = find(msg)
		return @slot.date.strftime("%Y-%m-%d")
	end

  def self.depFindByAppointment(appointment)
  	@slot = find(appointment.slot_id)
  	return @slot.timeslot.doctor.department.department_name
  end

  def self.docFindByAppointment(appointment)
    @slot = find(appointment.slot_id)
  	return @slot.timeslot.doctor.first_name+" "+@slot.timeslot.doctor.middle_name+" "+@slot.timeslot.doctor.last_name
  end

  def self.dateFindByAppointment(appointment)
  	@slot = Slot.find(appointment.slot_id)
  	return @slot.date.strftime('%m/%d/%Y')
  end


  def self.timeFindAppointment(appointment)
  	@slot = Slot.find(appointment.slot_id)
  	return @slot.time.strftime("%H:%M%p")
  end


end
