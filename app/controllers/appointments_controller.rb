class AppointmentsController < ApplicationController

  def index
    @appointments = Appointment.all
  end


  def show
    @appointment = Appointment.find(params[:id])
  end


  def new
    @appointment = Appointment.new
    @patient = User.find(session[:current_user_id]).user_record
    @slot_id = params[:id]
  end


  def edit
    @appointment = Appointment.find(params[:id])
  end


  def create
    @slot_id = Slot.find(params[:id])
    @appointment = @slot_id.appointment.create(params[:appointment])
    @slot_id.update_attributes(:status => 1)
    redirect_to("/")
  end


  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to(appointments_url)
  end
end
