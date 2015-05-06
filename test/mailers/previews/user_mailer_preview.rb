# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/forgot_password
  def forgot_password
    user = Admin.first
    UserMailer.forgot_password(user)
  end

end
