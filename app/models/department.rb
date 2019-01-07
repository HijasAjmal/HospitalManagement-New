class Department < ActiveRecord::Base
  has_many :rooms, :dependent => :destroy
  has_many :doctors
end
