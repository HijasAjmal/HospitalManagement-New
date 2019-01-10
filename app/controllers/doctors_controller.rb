require 'securerandom'
class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
    respond_to do |format|
      format.html
      format.pdf do
        render :pdf => "doctors_list"   # Excluding ".pdf" extension.
      end
    end
  end

  def show
    @doctors = Doctor.find(params[:id])
    @user = User.find(:first, :conditions => {:user_record_id => @doctors.id, :user_record_type => "Doctor"})
  end

  def doctor_profile_form
    @user = User.find(session[:current_user_id])
    @doctor = @user.user_record
    @department = Department.find(@doctor.department_id)
  end

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

  def delete
    @doctor = User.find(:first, :conditions => {:user_record_id => params[:id], :user_record_type => "Doctor"})
    @doctor.destroy
    redirect_to ("/doctors/index")
  end
end
