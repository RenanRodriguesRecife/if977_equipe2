class CommentsController < ApplicationController
    before_action :find_complaint
    before_action :find_comment, only: [:destroy]
    
    def create
        @comment = @complaint.comment.create(params[:comment].permit(:content))
        @comment.user_id = current_user.id
        @comment.save
        if @comment.save
            redirect_to complaint_path(@complaint)
        else
            render 'new'
        end
    end
    
    def destroy
        @comment.destroy
        redirect_to complaint_path(@complaint)
    end
    
    private
    def find_complaint
        @complaint = Complaint.find(params[:complaint_id])
    end
    
    def find_comment
        @comment = @complaint.comment.find(params[:id])
    end
end
