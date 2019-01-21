class CommentsController < ApplicationController


  filter_access_to :all
  before_filter :first_rule,
    :only => [:edit, :show, :destroy, :update]

  def first_rule
    @comment = Comment.find(params[:id])
  end


  # list all comments
  def index ## change condition###
    if find_user_type == "Admin"
      @recommendations = Comment.all(:conditions => { :is_recommended => 1, :recommendation_status => 0 })
    else
      @comments = Comment.all
    end
  end

  #show comment
  def show

  end

  # add new comment to appointment
  def new ## change condition####
    @appointment = Appointment.find(params[:id])
    @user = User.first(:conditions => { :user_record_id => @appointment.patient_id, :user_record_type => "Patient" })
    if @appointment.comments.create(
                :patient_condition => params[:patient_status][:id],
                :medication => params[:medication],
                :is_recommended => params[:option])
      flash[:notice] = "Record created successfully............"
    else
      flash[:notice] = "Failed to create the Medication details............Try again"
    end
    redirect_to :controller => :patients, :action => "details_view_doctor", :user_id => @user.user_name
  end


  # delete comment
  def delete_comment## condition ##
    if Comment.destroy(params[:id])
      flash[:notice] = "Deleted successfully...."
    else
      flash[:notice] = "Failed to Delete record...."
    end
    redirect_to :controller => :comments
  end

  # edit comment
  def edit

  end
end
