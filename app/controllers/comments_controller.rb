class CommentsController < ApplicationController

  before_filter :first_rule,
    :only => [:edit, :show, :destroy, :update]

  def first_rule
    @comment = Comment.find(params[:id])
  end


  # list all comments
  def index ## change condition
    if params[:id] == "1"
      @admin = 1
      @recommendations = Comment.all(:conditions => {:is_recommended => 1, :recommendation_status => 0})
    else
      @comments = Comment.all
    end
  end

  #show comment
  def show
  end

  # add new comment to appointment
  def new ## change condition
    @appointment = Appointment.find(params[:id])
    @user = User.first(:conditions => {:user_record_id => @appointment.patient_id, :user_record_type => "Patient"})
    if @appointment.comments.create(:patient_condition => params[:patient_status][:id], :medication => params[:medication], :is_recommended => params[:option]).nil?
      flash[:notice] = "Failed to create the Medication details............Try again"
      redirect_to :controller => :patients, :action => "details_view_doctor", :user_id => @user.user_name
    else
      @appointment.update_attributes(:is_diogonised => 0)
      redirect_to :controller => :patients, :action => "details_view_doctor", :user_id => @user.user_name
    end
  end

  # edit comment
  def edit

  end
end
