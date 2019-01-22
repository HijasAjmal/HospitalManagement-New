require 'securerandom'
class DoctorsController < ApplicationController

filter_access_to :all
  # list all doctors
  def index
    @doctors = Doctor.all
  end

  # show details of doctors
  def show
    @doctors = Doctor.find(params[:id])
  end

  # create doctor profile
  def doctor_profile_form
    @doctor = current_user.user_record
  end

  # view of current doctor
  def profile_view_doctor
    @doctor = current_user.user_record
  end

  # update doctor profile with full details
  def update_profile
    if current_user.user_record.update_attributes(
                :contact_number => params[:contact_number],
                :photo => params[:photo],
                :date_of_birth => params[:date_of_birth],
                :country_id => params[:country][:id],
                :gender => params[:option],
                :qualifications => params[:qualifications],
                :experience => params[:experience])
      flash[:notice] = "Profile Updated..........."
    else
      flash[:notice] = "Failed to create your profile, Try again..........."
    end
    redirect_to :controller => :sessions, :action => "signin"
  end

  # display all appointments of doctor
  def appointment_list_for_doctor
    @appointments = Appointment.all(
                :conditions => { :date => Time.now.strftime("%Y-%m-%d"),
                :doctor_id => current_user.user_record_id })
  end

  # delete doctor by admin
  def delete
    @doctor = User.first(:conditions => { :user_record_id => params[:id], :user_record_type => "Doctor" })
    if @doctor.destroy
      flash[:notice] = "Deleted successfully..........."
    else
      flash[:notice] = "Failed to Delete..........."
    end
    redirect_to :controller => :doctors, :action => "index"
  end

  # create doctor details as pdf (Pdf generate using wkhtmltopdf)
  def doctor_list
    @doctors = Doctor.all
    render :pdf => "doctor_list", :header => { :right => '[page] of [topage]' }, :margin => {
                  :top => 40,
                  :bottom => 0
               }
  end

end
