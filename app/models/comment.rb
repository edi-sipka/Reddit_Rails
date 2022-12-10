class Comment < ApplicationRecord
  belongs_to :account
  belongs_to :post
  validates_presence_of :message, :post_id, :account_id
end