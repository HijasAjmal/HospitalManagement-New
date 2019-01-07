class Slot < ActiveRecord::Base
  belongs_to :timeslots
  has_many :appointment
end
