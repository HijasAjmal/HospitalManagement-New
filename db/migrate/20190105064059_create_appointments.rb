class CreateAppointments < ActiveRecord::Migration
  def self.up
    create_table :appointments do |t|
      t.string :case
      t.string :date
      t.integer :is_diogonised, :default => 0
      t.integer :is_expired, :default => 0
      t.belongs_to :patient
      t.belongs_to :doctor
      t.belongs_to :slot, :index => true
      t.timestamps
    end
  end

  def self.down
    drop_table :appointments
  end
end
