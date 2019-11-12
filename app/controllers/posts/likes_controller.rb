class Posts::LikesController < LikesController
  before_action :set_votable

  private

  def set_votable
    @votable = Post.find(params[:post_id])
  end
end
