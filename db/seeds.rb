# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
require 'open-uri'
require 'active_record/fixtures'

["A+", "O+", "B+","AB+", "A-", "O-", "B-", "AB-"].each do |bg|
  Bloodgroup.find_or_create_by_name(bg)
end

["Undetermined", "Good", "Fair","Serious", "Critical", "Treated and Released", "Confirming patient deaths"].each do |ps|
  PatientCondition.find_or_create_by_name(ps)
end

["Male", "Female", "Other"].each do |g|
  Gender.find_or_create_by_name(g)
end

Country.delete_all
open("/home/foradian/RailProjects/HospitalManagement/db/country_list.txt") do |countries|
  countries.read.each_line do |country|
    code, name = country.chomp.split("|")
    Country.create!(:country_name => name, :code => code)
  end
end
