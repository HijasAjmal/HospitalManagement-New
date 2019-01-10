class CreateReports < ActiveRecord::Migration
  def self.up
    create_table :reports do |t|
    	t.belongs_to :user, :index => true
      t.timestamps
    end
  end

  def self.down
    drop_table :reports
  end
end
