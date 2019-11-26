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
  def update
    @role = User.find(params[:user_id])
    @role.update(guides_params)
    redirect_to home_becomeguide_path
  end
  def searchuser
    @result = Trip.where(city: params[:query])
  end
  private
  def guides_params
      params.require(:user).permit(:about_me, :why_me)
  end
end