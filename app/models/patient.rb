require "open-uri"
class Patient < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :email
  has_many :users, :as => :user_record
  has_many :admittedrecords
  has_many :doctors, :through => :appointments

  after_update :set_profile_status

  def self.findPatient(msg)
    @patient = find(msg)
    return @patient.first_name+" "+@patient.middle_name+" "+@patient.last_name
  end

  def self.findFile(url)
		@url = url.to_s
		@new_url = @url.split('?')
		return @new_url[0]
	end

  OPTIONS = {"No" => 0, "Yes" => 1}


  def self.findOption(msg)#
    return OPTIONS.index(msg)
  end

  def set_profile_status
    self.user.profile_completed if profile_status
  end
  GENDER = {1 => "Male", 2 => "Female", 3 => "Other" }


end
