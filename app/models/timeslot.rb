class Timeslot < ActiveRecord::Base
  belongs_to :doctor
  has_many :slots, :dependent => :destroy
  after_create :create_timeslot



  def find_doctor(timeslot) #change###
    @doctor = Doctor.find(timeslot.doctor_id)
    return @doctor.first_name + " " + @doctor.middle_name + " " + @doctor.last_name
  end

  # creating slots
  def create_timeslot
    @timeslot = self
    @date_time = @timeslot.start_date_time
    @count = @timeslot.slot_count_constant.strftime("%M").to_i
    @slots = @timeslot.slots.create(:date => @timeslot.start_date_time.strftime("%Y-%m-%d"), :time => @timeslot.start_date_time.strftime("%H:%M"))
    loop do
      if @timeslot.start_date_time == @timeslot.end_date_time
        break
      else
        @date_time = @date_time + @count * 60
        if @date_time > @timeslot.end_date_time
          break
        else
          @slots = @timeslot.slots.create(:date => @date_time.strftime("%Y-%m-%d"), :time => @date_time.strftime("%H:%M"))
        end
      end
    end
  end

  #find slots Status
  def find_slots(timeslot)
    @time_slots = timeslot.slots
    @time_slots.each do |slot|
      if slot.status == 0
        return true
        break
      end
    end
  end
end
