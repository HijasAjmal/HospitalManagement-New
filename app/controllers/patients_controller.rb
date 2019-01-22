class PatientsController < ApplicationController


  filter_access_to :all
  # list all patients
  def index
      @patients = Patient.all
  end


  # new patient
  def new


  end


  # creat details view of patient for admin
  def details_view_admin
    @user = User.first(:conditions => { :user_record_id => params[:id], :user_record_type => 'Patient' })
  end


  # creat patient profile view for patient
  def details_view_patient
    @patient = current_user.user_record
    @appointments = Appointment.all(:conditions => { :patient_id => @patient.id })
    find_reports(current_user.id)
  end



  # create patient profile view for doctor
  def details_view_doctor
    @comment = Comment.new
    @user = User.first(:conditions => { :user_name => params[:user_id].to_s, :user_record_type => "Patient" })
    if @user.nil?
      redirect_to :controller => :doctors, :action => "patient_details_login", :error => "ops! something went wrong.."
    else
      @doctor = current_user.user_record
      @appointment = Appointment.first(:conditions => { :patient_id => @user.user_record.id, :date => Time.now.strftime("%Y-%m-%d") })
    end
  end

  # create patient profile form
  def patient_profile_form
    @user = current_user
    @patient = @user.user_record
  end


  # update patient frofile form
  def update_profile
    @date = Date.civil(*params[:event].sort.map(&:last).map(&:to_i))
    if current_user.user_record.update_attributes(
                  :contact_number => params[:contact_number],
                  :date_of_birth => @date,
                  :blood_group => params[:blood][:id],
                  :gender => params[:gender],
                  :address => params[:address])
      flash[:notice] = "Profile updated successfully..."
      redirect_to ("/patients/details_view_patient")
    else
      flash[:notice] = "Failed to update Profile..."
      redirect_to :controller => :patients
    end
  end

  # craete all available time-slot for perticular date
  def slot_view
    if params[:department_id]
      @doctors = Doctor.all(:conditions => { :department_id => params[:department_id] })
      render :update do |page|
      page.replace_html 'doctor_list_patient' ,:partial =>'doctor_list_patient'
      end
    elsif params[:doctor_id]
      @flag = 1
      render :update do |page|
        page.replace_html 'dateform' ,:partial =>'show_date_form'
      end
    end
  end

  # search slots
  def search_slots
    @doctor = Doctor.find(params[:id])
    @date = Date.civil(*params[:date].sort.map(&:last).map(&:to_i)).strftime("%Y-%m-%d")
    @time = params[:start_time][:hour] + ":" + params[:start_time][:minute] + ":00"
    @datetime = DateTime.parse(@date.to_s + " " + @time.to_s)
    @timeslots = @doctor.timeslots.all(:conditions => ["start_date_time <= ? and  end_date_time >= ?",@datetime, @datetime])
  end

  # delete patient by admin
  def delete
    @user = User.first(:conditions => { :user_record_id => params[:id], :user_record_type => "Patient" })
    if @user.destroy
      flash[:notice] = "Deleted Patient record successfully..."
    else
      flash[:notice] = "Failed to delete patient record..."
    end
    redirect_to :controller => :patients
  end

  # find documents Uploaded by user id
  def find_reports(user)
    @reports = Report.all(:conditions => { :user_id => user })
  end

  # create patient details as pdf (Pdf generate using wkhtmltopdf)
  def patient_list
    @patients = Patient.all
    render :pdf => "patient_list", :header => { :right => '[page] of [topage]' }, :margin => {
                  :top => 40,
                  :bottom => 0
               }
  end
end
