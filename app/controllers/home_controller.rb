class HomeController < ApplicationController
    def index
      begin
        @role = current_user.role
      rescue NoMethodError => e
        redirect_to home_indexguest_path  
      end
    end
  
end
