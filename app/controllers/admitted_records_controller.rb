class AdmittedRecordsController < ApplicationController
  def new_record
    @patient = Patient.find(params[:id])
    # @admitted_record.@patient.create
    @appointment = Appointment.find(:first, :conditions => {:id => data})
    @slot_id = Slot.find(:first, :conditions => {:id => @appointment.id})
    @time_slot = Timeslot.find(:first, :conditions => {:id => @slot_id.timeslot_id})
    @doctor = Doctor.find(:first, :conditions => {:id => @time_slot.doctor_id})
    @department = Department.find(:first, :conditions => {:id => @doctor.department_id})
    
  end
end
