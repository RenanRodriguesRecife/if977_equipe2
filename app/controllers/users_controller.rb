class UsersController < ApplicationController
   
    def show
        @user = User.find(params[:id])
        @user_complaints = @user.complaint
    end
end