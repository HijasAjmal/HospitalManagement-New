class CreatePatients < ActiveRecord::Migration
  def self.up
    create_table :patients do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :contact_number
      t.string :email
      t.string :date_of_birth
      t.string :address
      t.string :gender
      t.string :blood_group
      t.integer :is_admitted, :default => 0
      t.integer :is_discharged, :default => 0
      t.belongs_to :appointment, :index => true
      t.timestamps
    end
  end

  def self.down
    drop_table :patients
  end
end
