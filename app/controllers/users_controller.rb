require 'securerandom'
class UsersController < ApplicationController


  # list all the users
  def index
    @users = User.all
  end


  # signup method
  def signup
    @user = User.new()
    if User.first(:conditions => {:email => params[:email]}) || Doctor.find(:first, :conditions => {:email => params[:email]}) || Patient.find(:first, :conditions => {:email => params[:email]})
     flash[:notice] = "Email Already Exist in Our Database...!"
     redirect_to :controller => :sessions
    elsif params[:id] == "3"
      @user.user_record = Patient.create(:first_name => params[:first_name], :middle_name => params[:middle_name],
      :last_name => params[:last_name],:email => params[:email])
      @user.save
      @u = User.find(@user.id)
      @d = @u.user_record
      @u.update_attributes(:user_name => @d.first_name+"@U"+@user.id.to_s, :password => @d.first_name+"@U"+@d.id.to_s, :confirmation_token => SecureRandom.hex(10) )
      UserMailer.deliver_welcome_email(@d, @u)
      redirect_to("/")
    elsif params[:id] == "2"
      @user.user_record = Doctor.create(:first_name => params[:first_name], :middle_name => params[:middle_name],
      :last_name => params[:last_name], :email => params[:email], :department_id => params[:category][:id])
      @user.save
      @u = User.find(@user.id)
      @d = @u.user_record
      @u.update_attributes(:user_name => @d.first_name+"@U"+@user.id.to_s, :password => @d.first_name+"@U"+@d.id.to_s, :confirmation_token => SecureRandom.hex )
      UserMailer.deliver_welcome_email(@d, @u)
      redirect_to("/doctors/index")
    elsif params[:id] == "1"
      @user = User.create(:first_name => params[:first_name], :middle_name => params[:middle_name],
        :last_name => params[:last_name], :email => params[:email])
      @user.update_attributes(:user_name => "A00"+@user.id.to_s, :password => @user.first_name+"@A"+@user.id.to_s, :user_record_type => "Admin", :confirmed => 1, :profile_status => 1)
      UserMailer.deliver_admin_email(@user)
      redirect_to("/sessions/show")
    end
  end
end
