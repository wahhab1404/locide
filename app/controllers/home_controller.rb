class HomeController < ApplicationController
  def index
    begin
      @role = current_user.role
    rescue NoMethodError => e
      home_indexguest_path
    end
  end
  def becomeguide
    @user = current_user
  end
end
