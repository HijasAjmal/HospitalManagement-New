require 'securerandom'
class UsersController < ApplicationController



  filter_access_to :all
  # list all the users
  def index
    @users = User.all
  end


  # signup method
  def signup #callbacks
    if User.first(:conditions => {:email => params[:email]}) || Doctor.find(:first, :conditions => {:email => params[:email]}) || Patient.find(:first, :conditions => {:email => params[:email]})
     flash[:notice] = "Email Already Exist in Our Database...!"
     redirect_to :controller => :sessions
    elsif params[:id] == "3"
       Patient.create(:first_name => params[:first_name], :middle_name => params[:middle_name],
      :last_name => params[:last_name],:email => params[:email])
      redirect_to("/")
    elsif params[:id] == "2"
      Doctor.create(:first_name => params[:first_name], :middle_name => params[:middle_name],
      :last_name => params[:last_name], :email => params[:email], :department_id => params[:category][:id])
      redirect_to("/doctors/index")
    elsif params[:id] == "1"
      @user = User.create(:first_name => params[:first_name], :middle_name => params[:middle_name],
        :last_name => params[:last_name], :email => params[:email])
      redirect_to("/sessions/show")
    end
  end
end
