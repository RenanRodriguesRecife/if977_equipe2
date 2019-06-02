class CommentsController < ApplicationController
    before_action :authenticate_user!
    before_action :find_complaint
    before_action :find_comment, only: [:destroy, :edit, :update, :comment_owner]
    before_action :comment_owner, only: [:destroy, :edit, :update]
    
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
    
    def update
        if @comment.update(params[:comment].permit(:content))
            redirect_to complaint_path(@complaint)
        else
            render 'edit'
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
    
    def comment_owner
        unless current_user.id == @comment.user_id
            flash[:notice] = "Você não pode accessar"
            redirect_to @complaint
        end
    end
    
end
