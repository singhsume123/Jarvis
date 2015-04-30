class AdvisorController < ApplicationController
  def index
  end

  def paymentinfo
    flash.now[:flash] = 'Form Submitted'
    render 'info'
  end
end
