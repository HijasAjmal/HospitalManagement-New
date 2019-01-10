class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.belongs_to :user, :index => true
      t.timestamps
    end
  end

  def self.down
    drop_table :photos
  end
end
