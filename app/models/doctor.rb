class Doctor < ActiveRecord::Base
  #validates_presence_of :email, :message => "hello"
  has_many :users, :as => :user_record
  has_many :timeslots
  has_one :departments
  belongs_to :departments
end
