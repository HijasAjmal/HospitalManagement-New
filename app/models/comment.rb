class Comment < ActiveRecord::Base
	belongs_to :appointment
	after_create :set_appointment_status
	belongs_to :patient_condition


	OPTIONS = { "No" => 0, "Yes" => 1 }


  def find_option(msg)
    return OPTIONS.index(msg)
  end

	def set_appointment_status
		appointment.update_attributes(:is_diogonised => 1)
	end
end
