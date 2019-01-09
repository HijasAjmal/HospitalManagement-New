class Doctor < ActiveRecord::Base
  #validates_presence_of :email, :message => "hello"
  has_many :users, :as => :user_record
  has_many :timeslots
  has_one :departments
  belongs_to :departments
  attr_accessor :image_file_name, :image_content_type, :image_file_size, :image_updated_at
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :url => "/system/:id/:style/:basename.:png",
  :path => ":rails_root/public/assets/products/:id/:style/:basename.:png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\z/
end
