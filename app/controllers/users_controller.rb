class UsersController < ApplicationController
   
    def show
        @u = User.find(params[:id])
        @user_complaints = @u.complaint
    end
    
    def user_complaints
        @user_comps = User.complaint.all
    end
end