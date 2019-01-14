require 'securerandom'
class DoctorsController < ApplicationController


  # list all doctors
  def index
    @doctors = Doctor.all
  end



  # show details of doctors
  def show
    @doctors = Doctor.find(params[:id])
    @user = @doctors.users
  end



  # create doctor profile
  def doctor_profile_form
    @user = User.find(session[:current_user_id])
    @doctor = @user.user_record
  end



  # update doctor profile with full details
  def update_profile
    @doctor = Doctor.find(params[:doctor])
    @gender = Gender.find(params[:gender][:id])
    @nationality = Country.find(params[:nationality][:id])
    @user = User.first(:conditions => {:user_record_id => params[:doctor], :user_record_type => "Doctor"})
    if @doctor.update_attributes(:contact_number => params[:contact_number], :photo => params[:photo],
    :date_of_birth => params[:date_of_birth], :nationality => @nationality.country_name, :gender => @gender.name,
    :qualifications => params[:qualifications], :experience => params[:experience]).nil?
      flash[:notice] = "Failed to create your profile, Try again..........."
      redirect_to :controller => :sessions, :action => "signin"
    else
      @user.update_attributes(:profile_status => 1)
      redirect_to("/")
    end
  end


  # delete doctor by admin
  def delete
    @doctor = User.first(:conditions => {:user_record_id => params[:id], :user_record_type => "Doctor"})
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
