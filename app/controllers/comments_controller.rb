class CommentsController < ApplicationController
  def create
    @comment = Comment.new(permitted_comment_params)

    if @comment.save
      flash[:success] = 'Thanks for your comment!'
    else
      flash[:alert] = @comment.err_messages
    end

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
  end

  private

  def permitted_comment_params
    params.require(:comment).permit(:content, :comment_category_id)
  end
end
