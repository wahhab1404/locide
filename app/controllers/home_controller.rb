class HomeController < ApplicationController
  
  def index
    begin
      @role = current_user.role
    rescue NoMethodError => e
      redirect_to home_indexguest_path
    end
  end
  def searchguest
    @results = User.where(city: params[:q], role:'guide')
  end
  def becomeguide
    @user = current_user
  end
  def update
    user = User.find(params[:id])
    user.update(guides_params)

    redirect_to edit_user_registration_path
  end
  def searchuser
    @result = Trip.where(city: params[:query])
  end
  private
  def guides_params
      params.require(:user).permit(:about_me, :why_me)
  end
end
