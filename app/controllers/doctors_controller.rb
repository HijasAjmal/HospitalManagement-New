require 'securerandom'
class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def show
    @doctors = Doctor.find(params[:id])
  end

  def doctor_profile_form
    @user = User.find(session[:current_user_id])
    @doctor = @user.user_record
    @department = Department.find(@doctor.department_id)
  end

  def updateprofile
    @doctor = Doctor.find(params[:doctor])
    @user = User.find(:first, :conditions => {:user_record_id => params[:doctor]})
    @doctor.update_attributes(:contact_number => params[:contact_number], :photo => params[:photo],
  :date_of_birth => params[:date_of_birth], :nationality => params[:nationality], :gender => params[:gender],
:qualifications => params[:qualifications], :experience => params[:experience])
  @user.update_attributes(:profile_status => 1)
redirect_to("/")
  end

  def delete
    @doctor = User.find(:first, :conditions => {:user_record_id => params[:id]})
    @doctor.destroy
    redirect_to ("/doctors/index")
  end
end
