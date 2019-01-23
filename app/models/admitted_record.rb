class AdmittedRecord < ActiveRecord::Base
  belongs_to :patient
  belongs_to :bed
  after_update :set_discharge_status, :if => :discharged_date_changed?

  OPTIONS = { "No" => 0, "Yes" => 1 }


  def find_option(msg)
    return OPTIONS.index(msg)
  end


  def find_patient
    return patient.first_name + " " + patient.middle_name + " " + patient.last_name
  end

  def set_discharge_status
    bed.update_attributes(:is_engaged => 0)
  end
end
