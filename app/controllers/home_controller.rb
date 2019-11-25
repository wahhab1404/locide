class HomeController < ApplicationController
  
  def index
    begin
      @role = current_user.role
    rescue NoMethodError => e
      redirect_to home_indexguest_path
    end
  end
  def searchguest
    @results = User.where(city: params[:q], role: 'guide')
  end
  def becomeguide
    @user = current_user
  end
end
