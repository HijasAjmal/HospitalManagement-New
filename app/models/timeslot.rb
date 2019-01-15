class Timeslot < ActiveRecord::Base
  belongs_to :doctor
  has_many :slots, :dependent => :destroy


  def self.findDepartment(timeslot)
    @timeslot = find(timeslot.id)
    return @timeslot.doctor.department.department_name
  end
end
