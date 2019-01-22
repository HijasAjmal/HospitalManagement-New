class Appointment < ActiveRecord::Base
	belongs_to :slot
	has_many :comments
	belongs_to :patient
	belongs_to :doctor
	after_create :set_slot_status


	def set_slot_status
		slot.update_attributes(:status => 1)
	end

end
