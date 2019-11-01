class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true
  belongs_to :account

  default_scope { order(created_at: :desc) }
end
