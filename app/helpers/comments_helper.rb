module CommentsHelper
  def findPatientCondition(data)
    @patient_condition = PatientCondition.find(data)
    return @patient_condition.status
  end

  def optionStatus(data)
    @option = Options.find(data)
    return @option.opt
  end
end
