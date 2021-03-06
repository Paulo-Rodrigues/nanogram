module Followable
  extend ActiveSupport::Concern
  
  included do
    has_many :follows, as: :follower, dependent: :destroy
    has_many :followings, as: :followable, dependent: :destroy, class_name: 'Follow'

  end

  def follow(followable)
    if self != followable
      self.follows.find_or_create_by(followable: followable)
    end
  end

  def following?(followable)
    mapped_ids = followed_ids
    mapped_ids.include?(followable.id)
  end

  def unfollow(followable)
    follows.delete(Follow.where(followable_id: followable.id, follower_id: self.id))
  end

  def followed_ids
    following_ids = Follow.where(follower_id: self.id).map(&:followable_id)
    following_ids << self.id
    following_ids
  end

end
