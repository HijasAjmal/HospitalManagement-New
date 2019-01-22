class TimeslotsController < ApplicationController


  filter_access_to :all
  # list all the timeslots
  def index
      @user = User.find(session[:current_user_id])
      @timeslots = Timeslot.all
  end


  # show time slot
  def show
    @timeslot = Timeslot.find(params[:id])
  end

  # new time slot
  def new
    @timeslot = Timeslot.new
    if params[:department_id]
      @doctors = Doctor.all(:conditions => { :department_id => params[:department_id] })
      @timeslot = Timeslot.new
      render :update do |page|
        page.replace_html 'doctor' ,:partial =>'doctor_list'
      end
    end
  end


  # edit the existing time slot
  def edit
    @timeslot = Timeslot.find(params[:id])
  end


  # create new time slot
  def create
    @doctor = Doctor.find(params[:doctor][:id])
    if @doctor.timeslots.create(params[:timeslot])
      flash[:notice] = "Timeslot Created successfully...."
    else
      flash[:notice] = "Failed to Create successfully...."
    end
    redirect_to :controller => :timeslots
  end


  # destroy time slot
  def destroy
    @timeslot = Timeslot.find(params[:id])
    if @timeslot.destroy
      flash[:notice] = "Timeslot Deleted successfully..."
    else
      flash[:notice] = "Failed Timeslot Deleted successfully..."
    end
    redirect_to :controller => :timeslots
  end

end
