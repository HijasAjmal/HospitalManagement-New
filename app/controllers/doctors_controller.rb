require 'securerandom'
class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
    respond_to do |format|
        format.pdf do
                @html = get_html
                @pdf = Wickedpdf.new.pdf_from_string(@html)
                send_data(@pdf, :filename => 'Test', :type => 'application/pdf')
        end
    end
  end

  def get_html
          ActionController::Base.new.render_to_string(:template => 'v1/profile/reports.pdf.rb',
                                          :orientation => 'Landscap',
                                          :page_size => 'Letter',
                                          :background => true)
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

  def uploadPhoto
    @user_type = User.find(:first, :conditions => {:user_record_id => 1, :user_record_type => "Doctor"}).user_record
    @user_type.update_attributes(params[:pic])
    redirect_to("/")

  end
end
