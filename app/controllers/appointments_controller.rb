class AppointmentsController < ApplicationController

  filter_access_to :all
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
  def create ### if condition##
    @slot_id = Slot.find(params[:id])
    if @slot_id.appointment.create(params[:appointment])
      flash[:notice] = "Appointment created successfully......."
      @slot_id.update_attributes(:status => 1)
      redirect_to("/")
    else
      flash[:notice] = "Faild to create Appointment...Try again..."
      redirect_to :controller => :patients, :action => "details_view_patient"
    end
  end

  # destroy appointment
  def destroy### if condition###
    if @appointment.destroy
      flash[:notice] = "Appointment deleted successfully......."
      redirect_to(appointments_url)
    else
      flash[:notice] = "Faild to delete Appointment......."
      redirect_to(appointments_url)
    end
  end
end
