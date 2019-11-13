class FeedQuery
  def initialize(user)
    @user = user
  end

  def to_relation
    Post.where(account_id: user.followed_ids)
      .with_eager_loaded_image
      .order(created_at: :desc)
  end

  private

  attr_reader :user
end
