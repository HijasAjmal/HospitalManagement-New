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
    @patient = current_user.user_record
    @slot = Slot.find(params[:id])
  end

  # edit appointment
  def edit

  end

  # create new appointment
  def create
    @slot_id = Slot.find(params[:id])
    if @slot_id.appointment.create(params[:appointment])
      flash[:notice] = "Appointment created successfully......."
      redirect_to("/")
    else
      flash[:notice] = "Faild to create Appointment...Try again..."
      redirect_to :controller => :patients, :action => "details_view_patient"
    end
  end

  # destroy appointment
  def destroy
    if @appointment.destroy
      flash[:notice] = "Appointment deleted successfully......."
    else
      flash[:notice] = "Faild to delete Appointment......."
    end
    redirect_to(appointments_url)
  end

  # create Departments details as pdf (Pdf generate using wkhtmltopdf)
  def appointment_list
    @appointments = Appointments.all
    render :pdf => "appointment_list", :header => { :right => '[page] of [topage]' }, :margin => {
                  :top => 40,
                  :bottom => 0
               }
  end
end
