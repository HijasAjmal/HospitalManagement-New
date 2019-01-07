class CreateDoctors < ActiveRecord::Migration
  def self.up
    create_table :doctors do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :contact_number
      t.string :email
      t.string :photo
      t.string :date_of_birth
      t.string :nationality
      t.string :gender
      t.string :qualifications
      t.string :experience
      t.belongs_to :department, :index => true
      t.timestamps

    end
  end

  def self.down
    drop_table :doctors
  end
end
