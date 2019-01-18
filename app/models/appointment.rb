class Appointment < ActiveRecord::Base
	belongs_to :slot
	has_many :comments
	belongs_to :patient
	belongs_to :doctor
	after_create :set_slot_status


	def set_slot_status
		self.slot.update_attributes(:status => 1)
	end

	def find_slot_date(msg)
		@slot = Slot.find(msg)
		return @slot.date.strftime("%Y-%m-%d")
	end

	def dep_find_by_appointment(appointment)
  	@slot = Slot.find(appointment.slot_id)
  	return @slot.timeslot.doctor.department.department_name
  end

	def doc_find_by_appointment(appointment)
    @slot = Slot.find(appointment.slot_id)
  	return @slot.timeslot.doctor.first_name+" "+@slot.timeslot.doctor.middle_name+" "+@slot.timeslot.doctor.last_name
  end

  def date_find_by_appointment(appointment)
  	@slot = Slot.find(appointment.slot_id)
  	return @slot.date.strftime('%m/%d/%Y')
  end


  def time_find_by_appointment(appointment)
  	@slot = Slot.find(appointment.slot_id)
  	return @slot.time.strftime("%H:%M%p")
  end

	def find_user(patient_id)
		@user = User.first(:conditions => {:user_record_id => patient_id, :user_record_type => "Patient"})
		return @user.user_name
	end
end
