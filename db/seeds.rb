# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
require 'open-uri'
require 'active_record/fixtures'

BloodGroup.delete_all
blood_groups = ["A+", "O+", "B+","AB+", "A-", "O-", "B-", "AB-"]
blood_groups.each do |name|
  BloodGroup.create(:name => name)
end

PatientCondition.delete_all
patient_conditions = ["Undetermined", "Good", "Fair","Serious", "Critical", "Treated and Released", "Confirming patient deaths"]
patient_conditions.each do |patientcondition|
   PatientCondition.create(:status => patientcondition)
 end

 Country.delete_all
 open("/home/virus/HospitalManagement/Ten/db/country_list.txt") do |countries|
  countries.read.each_line do |country|
     code, name = country.chomp.split("|")
     Country.create!(:country_name => name, :code => code)
   end
 end

User.create(:first_name => "Hijas", :middle_name => " ", :last_name => "Ajmal", :contact_number => "8907018654", :email => "Hijasajmal@gmail.com", :password => ".virus", :user_name => "A001", :confirmed => 1, :profile_status => 1, :user_record_type => "Admin")
