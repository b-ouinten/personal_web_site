class CommentsController < ApplicationController
  def create
    @comment = Comment.new(permitted_comment_params)

    if @comment.save
      flash[:success] = 'Thanks for your comment!'
    else
      flash[:alert] = @comment.errors.full_messages.to_sentence
    end

    redirect_to root_path
  end

  private

  def permitted_comment_params
    params.require(:comment).permit(:content, :comment_category_id)
  end
end
