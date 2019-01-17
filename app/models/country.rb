class Country < ActiveRecord::Base

  def self.find_country_code(country_id)
    return Country.find(country_id).code
  end
end
