class VotesController < ApplicationController
  def create
    post_id = params[:vote][:post_id]
    vote = Vote.new(vote_params)
    vote.account_id = current_account.id

    existing_vote = Vote.where(account_id: current_account.id, post_id:
    post_id)

    respond_to do |format|
      format.js do
        if existing_vote.positive?
          existing_vote.first.destroy
        else
          @success = if vote.save
                       true
                     else
                       false
                     end

          @post = Post.find(post_id)
          @total_upvotes = @post.upvotes
          @total_downvotes = @post.downvotes
        end

        render 'votes/create'
      end
    end
  end

  private

  def vote_params
    params.require(:vote).permit(:upvote, :post_id)
  end
end
