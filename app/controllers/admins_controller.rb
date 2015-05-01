class AdminsController < ApplicationController
  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)

    respond_to do |format|
      if @admin.save
        format.html { render registration_home_index_path, notice: 'Advisor user was successfully created.' }
        format.json { render registration_home_index_path, status: :created, location: @advisor_user }
      else
        format.html { render :new }
        format.json { render json: @advisor_user.errors, status: :unprocessable_entity }
      end
    end
  end

  def detroy
    @advisor_user.destroy
  end

  def admin_params
      params.require(:admin).permit(:email, :password, :password_confirmation)
    end
end
