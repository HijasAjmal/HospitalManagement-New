class AdmittedRecord < ActiveRecord::Base
  belongs_to :patient


  OPTIONS = {"No" => 0, "Yes" => 1}


  def self.findOption(msg)
    return OPTIONS.index(msg)
  end
end
