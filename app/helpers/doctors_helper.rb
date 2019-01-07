module DoctorsHelper
	def findDepartment(doctor)
		@doctor = User.find(doctor).user_record
		@department = Department.find(@doctor.department_id)
		return @department.department_name
	end
end
