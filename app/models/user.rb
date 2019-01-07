class User < ActiveRecord::Base
  belongs_to :user_record, :polymorphic => true, :dependent => :destroy
end
