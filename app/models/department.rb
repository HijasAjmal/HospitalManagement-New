class Department < ActiveRecord::Base
  validates_presence_of :department_name
  validates_uniqueness_of :department_name
  has_many :rooms, :dependent => :destroy
  has_many :doctors
end
