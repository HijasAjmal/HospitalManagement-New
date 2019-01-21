class Country < ActiveRecord::Base
  has_many :doctors
  def self.find_country_code(country_id)
    return Country.find(country_id).code
  end
end
