require 'fastercsv'
class Room < ActiveRecord::Base
  validates_presence_of :room_id, :department_id
  validates_presence_of :no_of_beds
  validates_numericality_of :no_of_beds
  belongs_to :department
  has_many :beds, :dependent => :destroy
  # after_update :create_bed, :if => :no_of_beds_changed?
  after_save :create_bed_new

  def self.to_csv
    @rooms = all
    FasterCSV.generate do |csv|
      csv << ["id", "total_no_of_beds", "department_id", "Engaged", "Available"]
      @rooms.each do |r|
        csv << [r.id, r.no_of_beds,r.department_id, Bed.count(:id, :conditions => {:is_engaged => 1, :room_id => r.id}), Bed.count(:id, :conditions => {:is_engaged => 0, :room_id => r.id})]
      end
    end
   end


   # def create_bed
   #   count = no_of_beds - no_of_beds_was
   #   count.times do
   #     self.beds.create()
   #   end
   # end

   def create_bed_new
     count = self.no_of_beds.to_i
     count.times do
       self.beds.create()
     end
   end
end
