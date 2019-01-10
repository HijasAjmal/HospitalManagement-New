class CommentsController < ApplicationController

  before_filter :first_rule,
    :only => [:edit, :show, :destroy, :update]

  def first_rule
    @comment = Comment.find(params[:id])
  end

  def index
    if params[:id] == "1"
      @admin = 1
      @recommendations = Comment.find(:all, :conditions => {:is_recommended => 1, :recommendation_status => 2})
    else
      @comments = Comment.all
    end
  end

  def show

    respond_to do |format|
      format.html
      format.xml  { render :xml => @comment }
    end
  end

  def new
    @appointment = Appointment.find(params[:id])
    @appointment.comments.create(:patient_condition => params[:patient_status][:id], :medication => params[:medication], :is_recommended => params[:opt][:id])
    @appointment.update_attributes(:is_diogonised => 1)
    @user = User.find(:first, :conditions => {:user_record_id => @appointment.patient_id, :user_record_type => "Patient"})
    redirect_to :controller => :patients, :action => "details_view_doctor", :user_id => @user.user_name
  end

  def edit
    
  end


  def create
    @comment = Comment.new(params[:comment])

    respond_to do |format|
      if @comment.save
        flash[:notice] = 'Comment was successfully created.'
        format.html { redirect_to(@comment) }
        format.xml  { render :xml => @comment, :status => :created, :location => @comment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update

    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        flash[:notice] = 'Comment was successfully updated.'
        format.html { redirect_to(@comment) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to(comments_url) }
      format.xml  { head :ok }
    end
  end
end
