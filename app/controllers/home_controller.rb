class HomeController < ApplicationController
  def index
    @user = current_user
    @users = User.all
    @campaigns = Campaign.all
    @donations = Pledge.all
  end
end
