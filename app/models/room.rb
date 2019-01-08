require 'fastercsv'
class Room < ActiveRecord::Base
  belongs_to :departments
  has_many :beds, :dependent => :destroy
  validates_presence_of :no_of_beds


  def self.to_csv
    @rooms = Room.all
    FasterCSV.generate do |csv|
      csv << ["id", "total_no_of_beds", "department_id", "Engaged", "Available"]
      @rooms.each do |r|
        csv << [r.id, r.no_of_beds,r.department_id, Bed.count(:id, :conditions => {:is_engaged => 1, :room_id => r.id}), Bed.count(:id, :conditions => {:is_engaged => 0, :room_id => r.id})]
      end
    end
   end
end
