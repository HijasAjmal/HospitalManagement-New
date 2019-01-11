class TimeslotsController < ApplicationController

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
    puts request.xhr?
    if params[:department_id]
      print params[:department_id]
      @flag = 1
      @doctors = Doctor.find(:all, :conditions => {:department_id => params[:department_id]})
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
    @timeslot = @doctor.timeslots.create(params[:timeslot])
    @timeslot = Timeslot.find(@timeslot.id)
    @date_time = @timeslot.start_date_time
    @count = @timeslot.slot_count_constant.strftime("%M").to_i
    @slots = @timeslot.slots.create(:date => @timeslot.start_date_time.strftime("%Y-%m-%d"), :time => @timeslot.start_date_time.strftime("%H:%M"))
    # creating slots
    loop do
      if @timeslot.start_date_time == @timeslot.end_date_time
        break
      else
        @date_time = @date_time+@count*60
        p @date_time
        if @date_time > @timeslot.end_date_time
          break
        else
          @slots = @timeslot.slots.create(:date => @date_time.strftime("%Y-%m-%d"), :time => @date_time.strftime("%H:%M"))
        end
      end
    end
    redirect_to :controller => :timeslots, :action => "index"
  end


  # update time slot
  def update
    @timeslot = Timeslot.find(params[:id])

    respond_to do |format|
      if @timeslot.update_attributes(params[:timeslot])
        format.html { redirect_to(@timeslot, :notice => 'Timeslot was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @timeslot.errors, :status => :unprocessable_entity }
      end
    end
  end


  # destroy time slot
  def destroy
    @timeslot = Timeslot.find(params[:id])
    @timeslot.destroy
    redirect_to :controller => :timeslots
  end

end
