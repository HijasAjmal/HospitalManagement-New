class PatientsController < ApplicationController

  def index
      @patients = Patient.all
  end

  def new


  end

  def details_view_admin
    @user = User.find(:first, :conditions => {:user_record_id => params[:id], :user_record_type => 'Patient'})
    @patient = @user.user_record
  end

  def details_view_patient
    @user = User.find(session[:current_user_id])
    @patients = @user.user_record
    @appointments = Appointment.find(:all, :conditions => {:patient_id => @patients.id})
  end

  def details_view_doctor
    @flag = 0
    @user = User.find(:first, :conditions => {:user_name => params[:user_id]})
    @patient = @user.user_record
    @doctor = User.find(session[:current_user_id]).user_record
    begin
      @appointment = Appointment.find(:first, :conditions => {:patient_id => @patient.id, :date => Time.now.strftime("%Y-%m-%d")})
    rescue
    end
      if @appointment.nil?
        @flag =1
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
  end

  def patient_profile_form
    @user = User.find(session[:current_user_id])
    @patient = @user.user_record

  end

  def updateprofile
    @blood_group = Bloodgroup.find(params[:blood][:id])
    @gender = Gender.find(params[:gender][:id])
    @date = Date.civil(*params[:event].sort.map(&:last).map(&:to_i))
    @patient = Patient.find(params[:patient])
    @patient.update_attributes(:contact_number => params[:contact_number], :photo => params[:photo],
  :date_of_birth => @date, :blood_group => @blood_group.name, :gender => @gender.name,
:address => params[:address])
    @user = User.find(:first, :conditions => {:user_record_id  => params[:patient], :user_record_type => "Patient"})
    @user.update_attributes(:profile_status => 1)
    redirect_to ("/patients/details_view_patient")
  end

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

  def delete
    @user = User.find(:first, :conditions => {:user_record_id => params[:id]})
    @user.destroy
    redirect_to :controller => :patients
  end
end
