class UserMailer < ActionMailer::Base
  def welcome_email(users_p, user)
    recipients    users_p.email
    from          "hijasajmal@gmail.com"
    subject       "Welcome to My Awesome Site"
    sent_on       Time.now
    body          :user => user, :users_p => users_p, :url => "http://localhost:3000/sessions/confirm/?id="+user.confirmation_token.to_s+"&uname="+user.password+"&pwd="+user.user_name
  end

  def admin_email(user)
    recipients    user.email
    from          "hijasajmal@gmail.com"
    subject       "Welcome to Administration Team"
    sent_on       Time.now
    body          :user => user, :url => "http://localhost:3000"
  end

  def password_email(user)
    recipients    user.email
    from          "hijasajmal@gmail.com"
    subject       "Password Reset Request"
    sent_on       Time.now
    body          :user => user, :url => "http://localhost:3000/sessions/change_p/?id="+user.remember_token.to_s
  end

end
