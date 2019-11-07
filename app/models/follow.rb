class Follow < ApplicationRecord
  belongs_to :followable, polymorphic: true
  belongs_to :follower, polymorphic: true
end
