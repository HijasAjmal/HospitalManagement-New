class CreateBeds < ActiveRecord::Migration
  def self.up
    create_table :beds do |t|
      t.integer :is_engaged, :default => 0
      t.belongs_to :room, :index => true
      t.timestamps
    end
  end

  def self.down
    drop_table :beds
  end
end
