class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

    def index; end

    def status
        render html: "Aplicação AccessibleLife em Construção !!"   
    end 
end    