class HomeController < ApplicationController
  
  def index
    begin
      @role = current_user.role
    rescue NoMethodError => e
      redirect_to new_user_registration_path
    end
  end
end
