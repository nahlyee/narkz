class UserMailer < ActionMailer::Base
  default from: "welcome@narkz.com"

	def welcome_email(user)
    @user = user
    @url  = "http://narkz.dev/login"
    mail(:to => user.email, :subject => "Welcome to narkz")
  end
end
