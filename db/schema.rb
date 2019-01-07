# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20190107114643) do

  create_table "admitted_records", :force => true do |t|
    t.integer  "bed_id"
    t.datetime "date"
    t.datetime "time"
    t.integer  "is_discharged"
    t.datetime "discharged_date"
    t.datetime "discharged_time"
    t.integer  "patient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "appointments", :force => true do |t|
    t.string   "case"
    t.integer  "patient_id"
    t.integer  "is_diogonised", :default => 0
    t.integer  "is_expired",    :default => 0
    t.integer  "slot_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "beds", :force => true do |t|
    t.integer  "is_engaged", :default => 0
    t.integer  "room_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bloodgroups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", :force => true do |t|
    t.integer  "patient_condition"
    t.string   "medication"
    t.integer  "is_recommended",        :default => 0
    t.integer  "recommendation_status", :default => 2
    t.integer  "appointment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", :force => true do |t|
    t.string   "country_name"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departments", :force => true do |t|
    t.string   "department_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doctors", :force => true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "contact_number"
    t.string   "email"
    t.string   "photo"
    t.string   "date_of_birth"
    t.string   "nationality"
    t.string   "gender"
    t.string   "qualifications"
    t.string   "experience"
    t.integer  "department_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "genders", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "options", :force => true do |t|
    t.string   "opt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patient_conditions", :force => true do |t|
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients", :force => true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "contact_number"
    t.string   "email"
    t.string   "date_of_birth"
    t.string   "address"
    t.string   "gender"
    t.string   "blood_group"
    t.string   "photo"
    t.integer  "is_admitted",    :default => 0
    t.integer  "is_discharged",  :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rooms", :force => true do |t|
    t.integer  "no_of_beds"
    t.integer  "department_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "slots", :force => true do |t|
    t.date     "date"
    t.time     "time"
    t.integer  "status",      :default => 0
    t.integer  "timeslot_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "timeslots", :force => true do |t|
    t.date     "date"
    t.time     "start_time"
    t.time     "end_time"
    t.time     "slot_count_constant"
    t.integer  "doctor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "contact_number"
    t.string   "email"
    t.string   "password"
    t.string   "user_name"
    t.string   "confirmation_token"
    t.integer  "confirmed",          :default => 0
    t.string   "remember_token"
    t.integer  "profile_status",     :default => 0
    t.integer  "user_record_id"
    t.string   "user_record_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
