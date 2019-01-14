class Appointment < ActiveRecord::Base
	belongs_to :slot
	has_many :comments
	belongs_to :patient
end
