class CommentsController < ApplicationController
  before_action :find_commentable

  def new
    @comment = Comment.new
  end

  def create
    @comment = @commentable.comments.new comment_params

    if @comment.save
      redirect_back fallback_location: root_path, notice: 'Your comment was successfully posted!'
    else
      redirect_back fallback_location: root_path, notice: 'Your comment was not successfully posted :('
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :user, :user_id)
  end

  def find_commentable
    @commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
    @commentable = SessionReport.find_by_id(params[:session_report_id]) if params[:session_report_id]
  end

end
