class LikesController < ApplicationController
    before_action :authenticate_user!
    before_action :find_complaint
    before_action :find_like, only: [:destroy]
    
    def already_liked?
        Like.where(user_id: current_user.id, complaint_id:
        params[:complaint_id]).exists?
    end
    
    def find_like
        @like = @complaint.like.find(params[:id])
    end
    
    def create
        if already_liked?
            flash[:notice] = "Você não pode curtir mais de uma vez"
        else
            @complaint.like.create(user_id: current_user.id)
        end
        redirect_to complaint_path(@complaint)
    end
    
    def destroy
        if !(already_liked?)
            flash[:notice] = "Não foi possivel Descutir"
        else
            @like.destroy
        end
        redirect_to complaint_path(@complaint)
    end
    
    private
    def find_complaint
        @complaint = Complaint.find(params[:complaint_id])
    end
end
