class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.integer :patient_condition
      t.string :medication
      t.belongs_to :appointment, :index => true
      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
