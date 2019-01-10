class User < ActiveRecord::Base
  belongs_to :user_record, :polymorphic => true, :dependent => :destroy
  has_one :photo
  has_many :reports
end
