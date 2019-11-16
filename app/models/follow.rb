class Follow < ApplicationRecord
  belongs_to :followable, polymorphic: true
  belongs_to :follower, polymorphic: true

  validates :followable, presence: true

  validates :follower, presence: true
end
