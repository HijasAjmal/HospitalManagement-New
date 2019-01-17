require "open-uri"
class Patient < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :email
  has_many :users, :as => :user_record
  has_many :admittedrecords
  has_many :doctors, :through => :appointments
  after_update :set_profile_status
  after_create :set_patient_credentials

  GENDER = {1 => "Male", 2 => "Female", 3 => "Other" }

  OPTIONS = {"No" => 0, "Yes" => 1}


  def set_profile_status
    self.user.profile_completed if profile_status
  end

  def set_patient_credentials
    User.update_user_credential(self)
  end
end
