class CommentsController < ApplicationController
    before_action :find_complaint
    
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
    
    private
    def find_complaint
        @complaint = Complaint.find(params[:complaint_id])
    end
end
