class AddAttachmentsPhotoToDoctor < ActiveRecord::Migration
  def self.up
    add_column :doctors, :photo_file_name, :string
    add_column :doctors, :photo_content_type, :string
    add_column :doctors, :photo_file_size, :integer
    add_column :doctors, :photo_updated_at, :datetime
  end

  def self.down
    remove_column :doctors, :photo_file_name
    remove_column :doctors, :photo_content_type
    remove_column :doctors, :photo_file_size
    remove_column :doctors, :photo_updated_at
  end
end
