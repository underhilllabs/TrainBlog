class CommentsController < ApplicationController
  before_action :find_commentable

  def new
    @comment = Comment.new
  end

  def create
    @comment = @commentable.comments.new comment_params

    respond_to do |format|  
      if @comment.save
        format.html { redirect_back fallback_location: root_path, notice: 'Your comment was successfully posted!'}
        format.js   { render layout: false, content_type: 'text/javascript' }
        #format.json { render :show, status: :created, location: @commentable }
      else
        redirect_back fallback_location: root_path, notice: 'Your comment was not successfully posted :('
      end
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :user, :user_id, :commenter)
  end

  def find_commentable
    @commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
    @commentable = SessionReport.find_by_id(params[:session_report_id]) if params[:session_report_id]
  end

end
