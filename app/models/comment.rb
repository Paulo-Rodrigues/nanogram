class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true
  belongs_to :account
  has_many :votes, as: :votable, dependent: :destroy

  default_scope { order(created_at: :desc) }
end
