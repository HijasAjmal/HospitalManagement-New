class CreateTimeslots < ActiveRecord::Migration
  def self.up
    create_table :timeslots do |t|
      t.date :date
      t.time :start_time
      t.time :end_time
      t.time :slot_count_constant
      t.belongs_to :doctor, :index => true
      t.timestamps
    end
  end

  def self.down
    drop_table :timeslots
  end
end
