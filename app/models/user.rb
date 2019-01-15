class User < ActiveRecord::Base
  belongs_to :user_record, :polymorphic => true, :dependent => :destroy
  has_many :photos
  has_many :reports

  has_many :roles
  def role_symbols
    roles.map do |role|
      role.name.underscore.to_sym
    end
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
