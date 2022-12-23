class CommentsController < ApplicationContoller
  def new
    @comments = Comment.new
  end

  def create
    @comment = Comment.new comment_params
    @comment.account_id = current_account.id
  end

  def comment_params
    params.require(:comment).permit(:message, :post_id)
  end
end
