class CreateAdmittedRecords < ActiveRecord::Migration
  def self.up
    create_table :admitted_records do |t|
      t.integer :bed_id
      t.datetime :date
      t.datetime :time
      t.integer :is_discharged, :default => 0
      t.datetime :discharged_date, :default => 0
      t.datetime :discharged_time, :default => 0
      t.belongs_to :patient, :index => true
      t.timestamps
    end
  end

  def self.down
    drop_table :admitted_records
  end
end
