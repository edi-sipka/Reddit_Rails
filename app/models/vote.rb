class Vote < ApplicationRecord
  belongs_to :account
  belongs_to :post
  validate_uniqueness_of :account_id, scope: :post_id

  after_create :increment_vote
  after_destroy :decrement_vote

  private

  def increment_vote
    Post.find(post_id).increment(:field).save
  end

  def decrement_vote
    Post.find(post_id).decrement(field).save
  end
end
