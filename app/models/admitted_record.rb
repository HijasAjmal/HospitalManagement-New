class AdmittedRecord < ActiveRecord::Base
  belongs_to :patient
  after_destroy :update_bed_status
  after_update :set_discharge_status, :if => :discharged_date_changed?

  OPTIONS = { "No" => 0, "Yes" => 1 }


  def find_option(msg)
    return OPTIONS.index(msg)
  end


  def find_patient(msg)
    @patient = Patient.find(msg)
    return @patient.first_name + " " + @patient.middle_name + " " + @patient.last_name
  end

  def update_bed_status
    @bed = Bed.find(self.bed_id)
    @bed.update_attributes(:is_engaged => 0)
  end

  def set_discharge_status
    @record = AdmittedRecord.find(self.id)
    @record.update_attributes(:is_discharged => 1)
  end
end
