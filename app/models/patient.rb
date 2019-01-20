require "open-uri"
class Patient < ActiveRecord::Base
  validates_presence_of :first_name, :last_name
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates_uniqueness_of :email
  has_many :users, :as => :user_record
  has_many :admittedrecords
  has_many :doctors, :through => :appointments
  after_update :set_profile_status
  after_create :set_patient_credentials

  GENDER = {1 => "Male", 2 => "Female", 3 => "Other" }

  OPTIONS = {"No" => 0, "Yes" => 1}


  def set_profile_status
    @patient = User.first(:conditions => {:user_record_id => self.id, :user_record_type => "Patient"})
    @patient.update_attributes(:profile_status => 1)
  end

  def set_patient_credentials
    User.update_user_credential(self)
  end


end
