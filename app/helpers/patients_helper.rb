module PatientsHelper
	def department(timeslot)
    @doctor = Doctor.find(34)
    @department = Department.find(@doctor.department_id)
    return @department.department_name
  end


  def doctor(timeslot)
    @doctor = Doctor.find(34)
    return @doctor.first_name+" "+@doctor.middle_name+" "+@doctor.last_name
  end

  def depFind(appointment)
  	@slot = Slot.find(appointment.slot_id)
  	@timeslot = Timeslot.find(@slot.timeslot_id)
  	@doctor = Doctor.find(@timeslot.doctor_id)
  	@department = Department.find(@doctor.department_id)
  	return @department.department_name
  end

  def dateFind(appointment)
  	@slot = Slot.find(appointment.slot_id)
  	return @slot.date.strftime('%m/%d/%Y')
  end

  def timeFind(appointment)
  	@slot = Slot.find(appointment.slot_id)
  	return @slot.time.strftime("%H:%M%p")
  end

  def docFind(appointment)
  	@slot = Slot.find(appointment.slot_id)
  	@timeslot = Timeslot.find(@slot.timeslot_id)
  	@doctor = Doctor.find(@timeslot.doctor_id)
  	return @doctor.first_name+" "+@doctor.middle_name+" "+@doctor.last_name
  end
end
