class PatientsController < ApplicationController


  # list all patients
  def index
      @patients = Patient.all
  end


  # new patient
  def new


  end


  # creat details view of patient for admin
  def details_view_admin
    @user = User.find(:first, :conditions => {:user_record_id => params[:id], :user_record_type => 'Patient'})
    @patient = @user.user_record
  end


  # creat patient profile view for patient
  def details_view_patient
    @user = User.find(session[:current_user_id])
    @patients = @user.user_record
    begin
      @appointments = Appointment.find(:all, :conditions => {:patient_id => @patients.id})
      find_reports(@user.id)
    rescue Exception => e

    end
    if @appointments.empty?
      @flag = 1
    else
      @flag = 0
    end
  end

  # create patient profile view for doctor
  def details_view_doctor
    @flag = 0
    begin
      @user = User.find(:first, :conditions => {:user_name => params[:user_id].to_s, :user_record_type => "Patient"})
      @patient = @user.user_record
      @doctor = User.find(session[:current_user_id]).user_record
    begin
      @appointment = Appointment.find(:first, :conditions => {:patient_id => @patient.id, :date => Time.now.strftime("%Y-%m-%d")})
    rescue
    end
      if @appointment.nil?
        @flag = 1
      else
        @slot = Slot.find(:first, :conditions => {:id => @appointment.slot_id, :date => Time.now.strftime("%Y-%m-%d")})
        @time_slot = Timeslot.find(@slot.timeslot_id.to_i)
        if @time_slot.doctor_id == @doctor.id
          if @slot.date.strftime("%m:%d:%y") == Time.now.strftime("%m:%d:%y") && @slot.time.strftime("%H:%M") > Time.now.strftime("%H:%M")
            @flag = 1
          else
            @flag = 0
          end
        end
      end
    rescue Exception => e

    end
    if @user.nil?
      @user_st = 1
    else
      @user_st = 0
    end
  end



  # create patient profile form
  def patient_profile_form
    @user = User.find(session[:current_user_id])
    @patient = @user.user_record
  end

  # update patient frofile form
  def updateprofile
    @blood_group = Bloodgroup.find(params[:blood][:id])
    @gender = Gender.find(params[:gender][:id])
    @date = Date.civil(*params[:event].sort.map(&:last).map(&:to_i))
    @patient = Patient.find(params[:patient])
    @patient.update_attributes(:contact_number => params[:contact_number],
  :date_of_birth => @date, :blood_group => @blood_group.name, :gender => @gender.name,
:address => params[:address])
    @user = User.find(:first, :conditions => {:user_record_id  => params[:patient], :user_record_type => "Patient"})
    @user.update_attributes(:profile_status => 1)
    redirect_to ("/patients/details_view_patient")
  end

  # craete all available time-slot for perticular date
  def searchslots
    @doctors = Doctor.find(:all, :conditions => {:department_id => params[:department][:id]})
    @timeslots = Timeslot.find(:all, :conditions => {:date => Date.civil(*params[:event].sort.map(&:last).map(&:to_i)).strftime("%Y-%m-%d"), :doctor_id => @doctors.each do |d| d.id end })
    @flag = 0
    @timeslots.each do |t|
      @slot = t.slots
      @slot.each do |s|
        if s.status == 0
          @flag = 1
        end
      end
    end
  end


  # delete time-slot
  def delete
    @user = User.find(:first, :conditions => {:user_record_id => params[:id]})
    @user.destroy
    redirect_to :controller => :patients
  end

  # find documents Uploaded by user id
  def find_reports(user)
    @reports = Report.find(:all, :conditions => {:user_id => user })
    if @reports.empty?
      @report_status = 1
    else
      @report_status = 0
    end

  end
end
