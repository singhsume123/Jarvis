class AdvisorController < ApplicationController
  def index
  end

  def create_team
    current_user.team_name=params[:teamname]
    current_user.team_code=genTeamCode(current_user.id)
    flash.now[:flash] = 'Team Created'
    render 'advisor/index'
  end

  def genTeamCode(seed)
    existing_pay_code="T"
    num = seed.to_i + rand(10000...900000)
    retcode = existing_pay_code + num.to_s
    done = 0
    # Check to see if the pay_code already exists
    while(done==0)
      # Checks database for code
      if AdvisorUser.where(:team_code => retcode).blank?	
        done = done + 1 #not in database
      else
        retcode = retcode + 1 #in database, increase and check again
      end
    end
    return retcode
  end
end
