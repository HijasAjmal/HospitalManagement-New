class Patient < ActiveRecord::Base
  has_many :users, :as => :user_record
  has_many :admittedrecords

end
