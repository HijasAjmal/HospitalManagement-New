class CreateSlots < ActiveRecord::Migration
  def self.up
    create_table :slots do |t|
      t.date :date
      t.time :time
      t.integer :status, :default => 0
      t.belongs_to :timeslot, :index => true
      t.timestamps
    end
  end

  def self.down
    drop_table :slots
  end
end
