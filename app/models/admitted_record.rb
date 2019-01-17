class AdmittedRecord < ActiveRecord::Base
  belongs_to :patient


  OPTIONS = {"No" => 0, "Yes" => 1}


  def find_option(msg)
    return OPTIONS.index(msg)
  end


  def find_patient(msg)
    @patient = Patient.find(msg)
    return @patient.first_name+" "+@patient.middle_name+" "+@patient.last_name
  end
end
