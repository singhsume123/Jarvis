class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.forgot_password.subject
  #
  def forgot_password(user)
    @user = user
    @greeting = "Hi"
    @admin_url  = 'http://localhost:3000/sessions/new'
    @advisor_url  = 'http://localhost:3000/sessions/new'
    @email = 'jacob.wier.9@gmail.com'

    if @user.usertype == "admin"
      mail(to: @user.email, subject: 'Sample Email')
    else
      mail(to: @user.username, subject: 'Sample Email')
    end
  end

end
