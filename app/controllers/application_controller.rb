class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

    def index; end

    def status
        render html: "Aplicação AccessibleLife em Construção !!"   
    end 
    
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :user_photo, :email, :password)}

        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name, :last_name, :user_photo, :email, :password, :current_password)}
    end
end    