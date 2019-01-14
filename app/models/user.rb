class User < ActiveRecord::Base
  belongs_to :user_record, :polymorphic => true, :dependent => :destroy
  has_many :photos
  has_many :reports
end
