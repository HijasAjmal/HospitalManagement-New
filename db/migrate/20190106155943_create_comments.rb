class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.integer :patient_condition
      t.string :medication
      t.string :doctor_id
      t.integer :is_recommended, :default => 0
      t.integer :recommendation_status, :default => 2
      t.belongs_to :appointment, :index => true
      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
