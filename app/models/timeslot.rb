class Timeslot < ActiveRecord::Base
  belongs_to :doctor
  has_many :slots, :dependent => :destroy



  def find_doctor(timeslot) #change###
    @doctor = Doctor.find(timeslot.doctor_id)
    return @doctor.first_name+" "+@doctor.middle_name+" "+@doctor.last_name
  end
end
