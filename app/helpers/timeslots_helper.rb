module TimeslotsHelper
  def department(timeslot)
    @doctor = Doctor.find(timeslot.doctor_id)
    @department = Department.find(@doctor.department_id)
    return @department.department_name
  end


  def doctor(timeslot)
    @doctor = Doctor.find(timeslot.doctor_id)
    return @doctor.first_name+" "+@doctor.middle_name+" "+@doctor.last_name
  end
end
