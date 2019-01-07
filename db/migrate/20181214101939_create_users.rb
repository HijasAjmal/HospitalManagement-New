class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :contact_number
      t.string :email
      t.string :password
      t.string :user_name
      t.string :confirmation_token
      t.integer :confirmed, :default => 0
      t.string :remember_token
      t.integer :profile_status, :default => 0
      t.references :user_record, :polymorphic => true, :index => true
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
