class HomesController < ApplicationController
  require './app/services/payjp_service.rb'
  def top; end

  def create_pay_record
    PayjpService.create

    redirect_to root_path
  end
end
