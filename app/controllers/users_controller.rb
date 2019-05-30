class UsersController < ApplicationController
   
    def show
        @user = User.find(params[:id])
        @user_complaints = @user.complaint
    end
    
    def user_complaints
        @user_comps = User.complaint.all
    end
end