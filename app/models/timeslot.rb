class Timeslot < ActiveRecord::Base
  belongs_to :doctors
  has_many :slots, :dependent => :destroy
end
