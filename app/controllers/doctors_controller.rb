require 'securerandom'
class DoctorsController < ApplicationController


  # list all doctors
  def index
    @doctors = Doctor.all
  end

  # show details of doctors
  def show
    @doctors = Doctor.find(params[:id])
    @user = User.find(:first, :conditions => {:user_record_id => @doctors.id, :user_record_type => "Doctor"})
  end

  # create doctor profile
  def doctor_profile_form
    @user = User.find(session[:current_user_id])
    @doctor = @user.user_record
    @department = Department.find(@doctor.department_id)
  end


  # update doctor profile with full details
  def updateprofile
    @doctor = Doctor.find(params[:doctor])
    @gender = Gender.find(params[:gender][:id])
    @nationality = Country.find(params[:nationality][:id])
    @user = User.find(:first, :conditions => {:user_record_id => params[:doctor], :user_record_type => "Doctor"})
    @doctor.update_attributes(:contact_number => params[:contact_number], :photo => params[:photo],
    :date_of_birth => params[:date_of_birth], :nationality => @nationality.country_name, :gender => @gender.name,
    :qualifications => params[:qualifications], :experience => params[:experience])
    @user.update_attributes(:profile_status => 1)
    redirect_to("/")
  end


  # delete doctor by admin
  def delete
    @doctor = User.find(:first, :conditions => {:user_record_id => params[:id], :user_record_type => "Doctor"})
    @doctor.destroy
    redirect_to ("/doctors/index")
  end


  # create doctor details as pdf (Pdf generate using wkhtmltopdf)
  def doctor_list
    @doctors = Doctor.all
    render :pdf => "doctor_list", :header => { :right => '[page] of [topage]'}, :margin => {
                  :top => 40,
                  :bottom => 0
               }
  end

end
