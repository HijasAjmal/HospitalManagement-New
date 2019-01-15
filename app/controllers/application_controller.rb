# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  before_filter :set_current_user


  def current_user
    if session[:current_user_id].present?
      user = User.find(session[:current_user_id])
    else
      nil
    end
  end

  protected
  def set_current_user
    Authorization.current_user = current_user
  end
  # def set_current_user
  #   if session[:current_user_id].present?
  #     @user = User.find(session[:current_user_id])
  #     @user_type = @user.user_record_type
  #     Authorization.current_user = @user_type
  #   end
  # end
  #
  # protected
  #
  # def permission_denied
  #   flash[:error] = "Sorry, you are not allowed to access that page."
  #   redirect_to root_url
  # end
end
