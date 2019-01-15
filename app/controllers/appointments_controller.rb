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

  # show appointment
  def show

  end

  # new appointment
  def new
    @appointment = Appointment.new
    @patient = User.find(session[:current_user_id]).user_record
    @slot_id = params[:id]
  end

  # edit appointment
  def edit

  end

  # create new appointment
  def create
    @slot_id = Slot.find(params[:id])
    @appointment = @slot_id.appointment.create(params[:appointment])
    @slot_id.update_attributes(:status => 1)
    redirect_to("/")
  end

  # destroy appointment
  def destroy
    @appointment.destroy
    redirect_to(appointments_url)
  end

  # list of appointments for doctors
  def doctor_appointment_list
  
  end
end
