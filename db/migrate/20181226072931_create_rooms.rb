class CreateRooms < ActiveRecord::Migration
  def self.up
    create_table :rooms do |t|
      t.integer :no_of_beds
      t.belongs_to :department, :index => true
      t.timestamps
    end
  end

  def self.down
    drop_table :rooms
  end
end
