class Timeslot < ActiveRecord::Base
  belongs_to :doctor
  has_many :slots, :dependent => :destroy
end
