class AdminsController < ApplicationController
  before_action :set_advisor_user, only: [:show, :edit, :update, :destroy]

  def index
    @admin = Admin.all
  end

  def new
    @admin = Admin.new
  end

  def show
  end

  def edit
  end

  def editlogin
  	render 'admins/changelogin'
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

  def update
    respond_to do |format|
      if @admin.update_attribute(:name , params[:admin][:name]) | @admin.update_attribute(:right_sig_url , params[:admin][:right_sig_url]) |
								  @admin.update_attribute(:mkt_place_url , params[:admin][:mkt_place_url]) |
								  @admin.update_attribute(:phone , params[:admin][:phone]) |
								  @admin.update_attribute(:fax , params[:admin][:fax])
	
      #if @admin.update(admin_params)						  
        format.html { redirect_to @admin, notice: 'Admin user was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin }

      else
        format.html { render :edit }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  def changelogin
    #@admin.right_sig_url = Admin.first.right_sig_url
    respond_to do |format|
     # if @admin.update_attribute(:email , params[:admin][:email]) 
       # format.html { redirect_to @admin, notice: 'Admin user was successfully updated.' }
        #format.json { render :show, status: :ok, location: @admin }
     # else
        #format.html { render :edit }
        #format.json { render json: @admin.errors, status: :unprocessable_entity }
     # end
      format.html { render :edit }
    end
  end

  def detroy
    @admin.destroy
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_advisor_user
      @admin = Admin.first
    end
    def admin_params
      params.require(:admin).permit(:email, :password, :password_confirmation, :name, :phone, :fax, :right_sig_url, :mkt_place_url)
    end
end
