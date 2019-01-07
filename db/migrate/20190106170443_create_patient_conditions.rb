class CreatePatientConditions < ActiveRecord::Migration
  def self.up
    create_table :patient_conditions do |t|
      t.string :status
      t.timestamps
    end
  end

  def self.down
    drop_table :patient_conditions
  end
end
