class Timeslot < ActiveRecord::Base
  belongs_to :doctor
  has_many :slots, :dependent => :destroy
  after_create :create_timeslot



  def find_doctor(timeslot)
    return timeslot.doctor.first_name + " " + timeslot.doctor.middle_name + " " + timeslot.doctor.last_name
  end

  # creating slots
  def create_timeslot
    date_time = start_date_time
    count =slot_count_constant.strftime("%M").to_i
    slots.create(:date => start_date_time.strftime("%Y-%m-%d"), :time => start_date_time.strftime("%H:%M"))
    loop do
      if start_date_time == end_date_time
        break
      else
        date_time = date_time + count * 60
        if date_time > end_date_time
          break
        else
          slots.create(:date => date_time.strftime("%Y-%m-%d"), :time => date_time.strftime("%H:%M"))
        end
      end
    end
  end

  #find slots Status
  def find_slots(timeslot)
    time_slots = timeslot.slots
    time_slots.each do |slot|
      if slot.status == 0
        return true
        break
      end
    end
  end
end
