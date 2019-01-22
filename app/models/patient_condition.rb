class PatientCondition < ActiveRecord::Base
  has_many :comments
end
