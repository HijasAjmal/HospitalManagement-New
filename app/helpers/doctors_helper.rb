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

	def findImagedoctor(user)
			@photo = Photo.find(:first, :conditions => {:user_id => user})
			if @photo.nil?
				return "/images/contact.png"
			else
				return @photo.photo.url(:small)
			end
	end
end
