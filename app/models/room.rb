require 'csv'
class Room < ActiveRecord::Base
  belongs_to :departments
  has_many :beds, :dependent => :destroy
  validates_presence_of :no_of_beds


  def self.to_csv
 #  	@rooms = Room.all
 #    attributes = %w{id no_of_beds department_id created_at updated_at} #customize columns here
 #    # CSV.generate("/home/virus/demo.csv", "w") do |csv|
 #    @file = File.open("/home/virus/demo.csv", "wb")
 #    CSV::Writer.generate(@file) do |csv|
 #  		csv << "Hijas"
 #  		# @rooms.each do |room|
 #  		# 	  # room.each do |d|
 #    #  			# csv << room
 #    #  	 	# end
 #  		#  end
	# end
 #   end
 @rooms = Room.all
 CSV.open("/home/virus/demo.csv", "w") do |csv|
  csv << ["row", "of", "CSV", "data"]
  @rooms.each do |r|
  	csv << r.attributes
  end
  # ...
	end
end



end
