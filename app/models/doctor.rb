class Doctor < ActiveRecord::Base
  #validates_presence_of :email, :message => "hello"
  has_many :users, :as => :user_record
  has_many :timeslots
  has_one :departments
  belongs_to :departments
  attr_accessor :photo_file_name, :photo_content_type, :photo_file_size, :photo_updated_at
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :url => "/system/:style/.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\z/
end
