SSSSclass User < ActiveRecord::Base
  belongs_to :user_record, :polymorphic => true, :dependent => :destroy
  has_many :photos
  has_many :reports

  def role_symbols
    return self.user_record_type.underscore.to_sym.to_a
  end

  def self.findUser(user)
    @user = first(:conditions => {:user_record_id => user, :user_record_type => "Patient"})
    return @user.user_name
  end


  def self.findDepartmentOfDoctor(doctor)
		@user = find(doctor)
		return findDepartment(@user.user_record_id)
	end


  def self.findDepartment(doctor)
		@doctor = first(:conditions => {:user_record_id => doctor}).user_record
		return @doctor.department.department_name
	end

end
