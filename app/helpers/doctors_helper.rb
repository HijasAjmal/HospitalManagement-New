module DoctorsHelper

	def findDepartmentOfDoctor(doctor)
		@user = User.find(doctor)
		return findDepartment(@user.user_record_id)

	end
	def findDepartment(doctor)
		@doctor = User.find(:first, :conditions => {:user_record_id => doctor}).user_record
		@department = Department.find(@doctor.department_id)
		return @department.department_name
	end
end
