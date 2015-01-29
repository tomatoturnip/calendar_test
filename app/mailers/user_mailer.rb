class UserMailer < ActionMailer::Base
  default from: 'peninsulachurchinchrist@gmail.com'

  def new_user_sign_up_email(user)
    @user = user

    mail(to: @user.email, subject: 'Your request to become a PCIC member is pending approval')
  end

  def user_approved_email(user)
    @user = user

    mail(to: @user.email, subject: 'Your request to become a PCIC member has been approved!')
  end
end
