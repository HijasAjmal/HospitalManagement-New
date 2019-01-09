class TimeslotsController < ApplicationController

  #
  def index
      @user = User.find(session[:current_user_id])
      @timeslots = Timeslot.all
      respond_to do |format|
         format.html # index.html.erb
         format.xml  { render :xml => @timeslots }
      end
  end

  # GET /timeslots/1
  # GET /timeslots/1.xml
  def show
    @timeslot = Timeslot.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @timeslot }
    end
  end

  # GET /timeslots/new
  # GET /timeslots/new.xml
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

  # GET /timeslots/1/edit
  def edit
    @timeslot = Timeslot.find(params[:id])
  end

  # POST /timeslots
  # POST /timeslots.xml
  def create
    @doctor = Doctor.find(params[:doctor][:id])
    @timeslot = @doctor.timeslots.create(params[:timeslot])
    @const_time = @timeslot.slot_count_constant.min
    @start_time_hour = @timeslot.start_time.hour
    @start_time_min = @timeslot.start_time.min

    # creating slots
    loop do
      if @start_time_hour.to_s+":"+@start_time_min.to_s == @timeslot.end_time.hour.to_s+":"+@timeslot.end_time.min.to_s
        break
      elsif @start_time_hour.to_i >= @timeslot.end_time.hour.to_i
        if @start_time_min.to_i > @timeslot.end_time.min.to_i
          break
        end
      else
        @slots = @timeslot.slots.create(:date => @timeslot.date, :time => @start_time_hour.to_s+":"+@start_time_min.to_s)
      end
      @start_time_min += @const_time
      if @start_time_min > 59
        @min_diff = @start_time_min - 59
        @start_time_hour += 1
        if @start_time_hour > 24
          @start_time_hour = 1
        end
        @start_time_min = @min_diff
      end
    end
    redirect_to :controller => :timeslots, :action => "index"
  end

  # PUT /timeslots/1
  # PUT /timeslots/1.xml
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

  # DELETE /timeslots/1
  # DELETE /timeslots/1.xml
  def destroy
    @timeslot = Timeslot.find(params[:id])
    @timeslot.destroy

    respond_to do |format|
      format.html { redirect_to(timeslots_url) }
      format.xml  { head :ok }
    end
  end

end
