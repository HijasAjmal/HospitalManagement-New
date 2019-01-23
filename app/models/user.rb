class User < ActiveRecord::Base
  validates_presence_of :first_name, :last_name
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates_uniqueness_of :email
  belongs_to :user_record, :polymorphic => true, :dependent => :destroy
  has_many :photos
  has_many :reports
  after_create :set_admin_credential

  def role_symbols
    return user_record_type.underscore.to_sym.to_a
  end


  def self.update_user_credential(record)
    encrypt_password = Digest::SHA1.hexdigest(record.id.to_s + "123")
    user = new(
        :first_name => record.first_name,
        :middle_name => record.middle_name, :last_name => record.last_name,
        :email => record.email, :user_name => record.first_name + "@U" + record.id.to_s,
        :password => encrypt_password,
        :confirmation_token => SecureRandom.hex(10)
    )
    user.user_record = record
    user.save
    UserMailer.deliver_welcome_email(record, user)
  end

  def set_admin_credential
    if user_record_type == "Admin"
      update_attributes(:user_name => "A00" + id.to_s, :password => first_name + "@A" + id.to_s, :user_record_type => "Admin", :confirmed => 1, :profile_status => 1)
      UserMailer.deliver_admin_email(self)
    end
  end
end
