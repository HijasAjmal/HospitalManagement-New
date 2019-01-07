class CreateBloodgroups < ActiveRecord::Migration
  def self.up
    create_table :bloodgroups do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :bloodgroups
  end
end
