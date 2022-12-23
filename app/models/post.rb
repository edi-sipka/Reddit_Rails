class Post < ApplicationRecord
  belongs_to :account
  belongs_to :community
  validates_presence_of :title, :body, :account_id, :community_id
  has_many :comments

  def score
    0
  end
end
