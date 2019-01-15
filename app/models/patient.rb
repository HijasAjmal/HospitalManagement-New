require "open-uri"
class Patient < ActiveRecord::Base
  has_many :users, :as => :user_record
  has_many :admittedrecords
  has_many :doctors, :through => :appointments


  def self.findPatient(msg)
    @patient = find(msg)
    return @patient.first_name+" "+@patient.middle_name+" "+@patient.last_name
  end

  def self.findFile(url)
		@url = url.to_s
		@new_url = @url.split('?')
		return @new_url[0]
	end


end
