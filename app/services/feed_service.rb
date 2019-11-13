class FeedService
  def initialize(user)
    @user = user
  end

  def call
    FeedQuery.new(user).to_relation
  end

  private
  attr_reader :user
end
