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
    @user = User.first(:conditions => {:user_record_id => params[:id], :user_record_type => 'Patient'})
    @patient = @user.user_record
  end


  # creat patient profile view for patient
  def details_view_patient
    @user = User.find(session[:current_user_id])
    @patients = @user.user_record
    @appointments = Appointment.all(:conditions => {:patient_id => @patients.id})
    find_reports(@user.id)
  end



  # create patient profile view for doctor
  def details_view_doctor
      @user = User.first(:conditions => {:user_name => params[:user_id].to_s, :user_record_type => "Patient"})
      if @user.nil?
          redirect_to :controller => :doctors, :action => "patient_details_login", :error => "ops! something went wrong.."
        else
      @patient = @user.user_record
      @doctor = User.find(session[:current_user_id]).user_record
    begin
      @appointment = Appointment.first(:conditions => {:patient_id => @patient.id, :date => Time.now.strftime("%Y-%m-%d")})
    rescue
    end
      if @appointment.nil?
        @flag = 1
      else
        if @appointment.slot.timeslot.doctor_id == @doctor.id
          if @appointment.slot.date.strftime("%m:%d:%y") == Time.now.strftime("%m:%d:%y") && @appointment.slot.time.strftime("%H:%M") > Time.now.strftime("%H:%M")
            @flag = 1
          else
            @flag = 0
          end
        end
      end
    end
  end



  # create patient profile form
  def patient_profile_form
    @user = User.find(session[:current_user_id])
    @patient = @user.user_record
  end

  # update patient frofile form
  def updateprofile #TODO
    @blood_group = Bloodgroup.find(params[:blood][:id])
    @date = Date.civil(*params[:event].sort.map(&:last).map(&:to_i))
    @patient = Patient.find(params[:patient])
    @patient.update_attributes(:contact_number => params[:contact_number],
  :date_of_birth => @date, :blood_group => @blood_group.name, :gender => params[:option],
:address => params[:address], :profile_status => 1)
    @user = User.first(:conditions => {:user_record_id  => params[:patient], :user_record_type => "Patient"})
    @user.update_attributes(:profile_status => 1)
    redirect_to ("/patients/details_view_patient")
  end

  # craete all available time-slot for perticular date
  def slot_view
    if params[:department_id]
      @doctors = Doctor.all(:conditions => {:department_id => params[:department_id]})
      render :update do |page|
      page.replace_html 'doctor_list_patient' ,:partial =>'doctor_list_patient'
      end
    elsif params[:doctor_id]
      print params[:department_id]
      @flag = 1
      render :update do |page|
      page.replace_html 'dateform' ,:partial =>'show_date_form'
      end
    end
  end


  def search_slots#TODO
    @doctor = Doctor.find(params[:id])
    @date = Date.civil(*params[:date].sort.map(&:last).map(&:to_i)).strftime("%Y-%m-%d")
    @time = params[:start_time][:hour]+":"+params[:start_time][:minute]+":00"
    @datetime = DateTime.parse(@date.to_s+" "+@time.to_s)
    @timeslots = @doctor.timeslots.all(:conditions => ["start_date_time <= ? and  end_date_time >= ?",@datetime, @datetime])
    @flag = 0
    if @timeslots.empty?
      @flag = 0
    else
      @timeslots.each do |t|
        @slot = t.slots
        @slot.each do |s|
          if s.status == 0
            @flag = 1
          end
        end
      end
    end
  end



  # delete patient by admin
  def delete#TODO
    @user = User.first(:conditions => {:user_record_id => params[:id], :user_record_type => "Patient"})
    @user.destroy
    redirect_to :controller => :patients
  end

  # find documents Uploaded by user id
  def find_reports(user)#TODO
    @reports = Report.all(:conditions => {:user_id => user })
    if @reports.empty?
      @report_status = 1
    else
      @report_status = 0
    end

  end
end
