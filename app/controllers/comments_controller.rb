class CommentsController < ApplicationController

  before_filter :first_rule,
    :only => [:edit, :show, :destroy, :update]

  def first_rule
    @comment = Comment.find(params[:id])
  end

  # list all comments
  def index
    if params[:id] == "1"
      @admin = 1
      @recommendations = Comment.find(:all, :conditions => {:is_recommended => 1, :recommendation_status => 2})
    else
      @comments = Comment.all
    end
  end

  #show comment
  def show
  end

  # add new comment to appointment
  def new
    @appointment = Appointment.find(params[:id])
    @appointment.comments.create(:patient_condition => params[:patient_status][:id], :medication => params[:medication], :is_recommended => params[:opt][:id])
    @appointment.update_attributes(:is_diogonised => 1)
    @user = User.find(:first, :conditions => {:user_record_id => @appointment.patient_id, :user_record_type => "Patient"})
    redirect_to :controller => :patients, :action => "details_view_doctor", :user_id => @user.user_name
  end

  # edit comment
  def edit

  end
end
