class SessionsController < ApplicationController
  def new
  end

  def create
    user = AdvisorUser.find_by(username: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # log the user in and redirect to some page
      flash[:danger] = 'Successfully logged in'
      render 'new'
    else
      #create an error message
      flash[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
  end
end
