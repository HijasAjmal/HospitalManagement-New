class AdmittedRecordsController < ApplicationController

  def index
    @admitted_records = AdmittedRecord.all
  end
  def new_record
    if params[:room_id]
      @flag = 1
      @beds = Bed.find(:all, :conditions => {:is_engaged => 0, :room_id => params[:room_id]})
      render :update do |page|
      page.replace_html 'bedlistform' ,:partial =>'bed_list'
      end
    else
      @comment = Comment.find(params[:id])
      @appointment = Appointment.find(@comment.appointment_id)
      @patient = Patient.find(@appointment.patient_id)
      @slot_id = Slot.find(:first, :conditions => {:id => @appointment.slot_id})
      @time_slot = Timeslot.find(:first, :conditions => {:id => @slot_id.timeslot_id})
      @doctor = Doctor.find(:first, :conditions => {:id => @time_slot.doctor_id})
      @department = Department.find(:first, :conditions => {:id => @doctor.department_id})
      @rooms = @department.rooms
    end
  end


  def create_record
    @bed = Bed.find(params[:bed_id][:id])
    @bed.update_attributes(:is_engaged => 1)
    @comment = Comment.find(params[:id])
    @comment.update_attributes(:recommendation_status => 1)
    @admitted_record = AdmittedRecord.create(:bed_id => params[:bed_id][:id], :date => DateTime.now.strftime('%m/%d/%Y'), :time => Time.now.strftime("%H:%M%p"), :patient_id => params[:patient_id])
    redirect_to("/comments?id=1")
  end

  def delete
    @admitted_record = AdmittedRecord.find(params[:id])
    @bed = Bed.find(@admitted_record.bed_id)
    @bed.update_attributes(:is_engaged => 0)
    AdmittedRecord.destroy(params[:id])
    redirect_to("/comments?id=1")
  end
end
