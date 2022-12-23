class VotesController < ApplicationController

 def create
       
    post_id = params[:vote][:post_id]
    vote = Vote.new(vote_params)
    vote.account_id = current_account.id

    existing_vote = Vote.where(account_id: current_account.id, post_id: 
    post_id)

    respond_to do |format|
     format.js {

        if existing_vote > 0
            existing_vote.first.destroy 
        else
        if vote.save
            @success = true
        else
            @success = false
        end

        @post = Post.find(post_id)
        @total_upvotes = @post.upvotes
        @total_downvotes = @post.downvotes    
    end

     render "votes/create"
        }
    end
 end

    private
    def vote_params
        params.require(:vote).permit(:upvote, :post_id)
    end
    end