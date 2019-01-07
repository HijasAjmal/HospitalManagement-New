class CreateAppointments < ActiveRecord::Migration
  def self.up
    create_table :appointments do |t|
      t.string :case
      t.integer :patient_id
      t.belongs_to :slot, :index => true
      t.timestamps
    end
  end

  def self.down
    drop_table :appointments
  end
end
