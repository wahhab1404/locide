class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
<<<<<<< HEAD
    
    protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [ :first_name, :last_name, :phone, :country, :city])
    end
=======
    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [ :first_name, :last_name, :phone, :country, :city])
    end 
>>>>>>> master
end
