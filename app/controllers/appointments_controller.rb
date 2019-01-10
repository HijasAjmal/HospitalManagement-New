class AppointmentsController < ApplicationController

  before_filter :first_rule,
    :only => [:edit, :show, :destroy]

  def first_rule
    @appointment = Appointment.find(params[:id])
  end  
  # listing all appointments
  def index
    @appointments = Appointment.all
  end

  #
  def show
    
  end


  def new
    @appointment = Appointment.new
    @patient = User.find(session[:current_user_id]).user_record
    @slot_id = params[:id]
  end


  def edit
    
  end


  def create
    @slot_id = Slot.find(params[:id])
    @appointment = @slot_id.appointment.create(params[:appointment])
    @slot_id.update_attributes(:status => 1)
    redirect_to("/")
  end


  def destroy
    @appointment.destroy
    redirect_to(appointments_url)
  end
end
