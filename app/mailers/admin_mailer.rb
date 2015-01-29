class AdminMailer < ActionMailer::Base
  default to: Proc.new { User.where(role: "admin").pluck(:email) },
    from: 'peninsulachurchinchrist@gmail.com'

  def new_registration_email(user)
    @user = user
    @url = "https://peninsulachurch.herokuapp.com/admin/users"
    mail(subject: "New user signup: #{@user.email}")
  end
end
