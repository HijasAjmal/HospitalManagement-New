require 'securerandom'
require 'bcrypt'
class SessionsController < ApplicationController


  filter_access_to :all
  # check session nil or not
  def index
    if current_user
      redirect_to :controller => :sessions, :action => "signin"
    end
  end


  # create new session
  def create
    # ...
    session[:current_user_id] = @user.id
    # ...
  end

  # destroy existing session
  def destroy
    session[:current_user_id] = nil
    redirect_to :controller => :sessions, :action => "index"
  end


  # signin method
  def signin
    if current_user
      @user = current_user
    else
      encrypt_password = Digest::SHA1.hexdigest(params[:password])
      @user = User.first(:conditions => {
                    :user_name => params[:user_name],
                    :password => encrypt_password })
    end


    if @user.nil?
      flash[:notice] = 'User Name or Password incorrect.....!'
      redirect_to :controller => :sessions
    elsif @user.confirmed == 0
      flash[:notice] = 'Please check your email and confirm you account.....!'
      redirect_to ("/")
    elsif @user.confirmed == 1 && @user.profile_status == 1
      session[:current_user_id] = @user.id
      if @user.user_record_type == "Admin"
        redirect_to("/sessions/dashboard")
      elsif @user.user_record_type == "Doctor"
        redirect_to("/doctors/profile_view_doctor")
      elsif @user.user_record_type == "Patient"
        redirect_to :controller => :patients, :action => :details_view_patient
      end
    elsif @user.profile_status != 1 && @user.user_record_type == "Doctor"
      session[:current_user_id] = @user.id
      redirect_to("/doctors/doctor_profile_form")
    elsif @user.profile_status != 1 && @user.user_record_type == "Patient"
      session[:current_user_id] = @user.id
      redirect_to("/patients/patient_profile_form")
    else
      flash[:notice] = 'Please check your email...!'
      redirect_to :controller => :sessions
    end
  end

  # show all admin records
  def show
    @admins = User.all( :conditions =>{:user_record_type => "Admin" })
  end


  # confirm new account with email confirmation_token
  def confirm
    @user = User.first(:conditions => { :confirmation_token => params[:id] })
    if @user.nil?
      flash[:notice] = 'This link is not valid..!'
      signin()
    else
      @user.update_attributes(:confirmation_token => nil, :confirmed => 1)
      session[:current_user_id] = @user.id

      signin()
    end
  end


  # request method for forget password
  def forget
    @user = User.first(:conditions => { :email => params[:email] })
    if @user.nil?
      flash[:notice] = 'This email is not exist in our database..!'
    else
      @user.update_attributes(:remember_token => SecureRandom.hex)
      UserMailer.deliver_password_email(@user)
      flash[:notice] = 'Password reset link is in your email..!'
    end
    redirect_to("/")
  end

  # method to change the password
  def change_pwd
    @user = User.first(:conditions => { :remember_token => params[:id] })
    if @user.nil?
      flash[:notice] = 'This link is not valid..!'
    else
      @user.update_attributes(:password => params[:password], :remember_token => nil)
      flash[:notice] = 'successfully updated your account password..!'
    end
    redirect_to("/")
  end
end
