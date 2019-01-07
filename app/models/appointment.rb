class Appointment < ActiveRecord::Base
	belongs_to :slot
	has_many :comments
end
