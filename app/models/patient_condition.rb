class PatientCondition < ActiveRecord::Base
  def self.findPatientCondition(data)
    @patient_condition = find(data)
    return @patient_condition.status
  end
end
