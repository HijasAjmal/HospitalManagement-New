class Patient < ActiveRecord::Base
  #validates_presence_of :email, :message => "hello"
  has_many :users, :as => :user_record
  has_many :admittedrecords
  has_attached_file :photo

end
