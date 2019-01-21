class Doctor < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :department_id
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates_uniqueness_of :email
  has_many :users, :as => :user_record
  has_many :timeslots
  has_one :department
  belongs_to :department
  belongs_to :country
  has_many :patients, :through => :appointments
  after_update :set_profile
  after_create :set_doctor_credentials

  attr_accessor :photo_file_name, :photo_content_type, :photo_file_size, :photo_updated_at
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :url => "/system/:style/.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\z/


  GENDER = { 1 => "Male", 2 => "Female", 3 => "Other" }

  def set_profile
    @user = User.first(:conditions => { :user_record_id => self.id, :user_record_type => "Doctor" })
    @user.update_attributes(:profile_status => 1)
  end

  def set_doctor_credentials
    User.update_user_credential(self)
  end


end
