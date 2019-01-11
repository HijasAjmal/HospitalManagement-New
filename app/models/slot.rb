class Slot < ActiveRecord::Base
  belongs_to :timeslot
  has_many :appointment
end
