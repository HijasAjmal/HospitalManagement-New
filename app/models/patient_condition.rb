class PatientCondition < ActiveRecord::Base


  def self.find_patient_condition(data)
    @patient_condition = find(data)
    return @patient_condition.status
  end
end
