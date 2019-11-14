class PostPresenter < BasePresenter
  presents :post

  def post_avatar
    handle_none post.account.avatar do
      h.image_tag(post.account.avatar, class: 'card-avatar')
    end
  end

  def post_username
    handle_none post.account.username do
      post.account.username
    end
  end

  def post_image
    handle_none post.image.attached? do
      h.image_tag(post.image, class: 'post-image')
    end
  end

  def link_to_post_image
    h.link_to h.post_path(post) do
      h.image_tag(post.image, class: 'feed-image')
    end
  end

  def post_description
    handle_none post.description do
      post.description
    end
  end

  def liked_posts
    if h.current_account.liked?(post)
      h.link_to "Unlike", h.post_like_path(post), method: :delete
    else
      h.link_to "Like", h.post_likes_path(post), method: :post
    end
  end

  def delete_post
    h.link_to "Delete", h.post_path(post), method: :delete, data: {confirm: "Sure?"} 
  end

  def comments_form
    h.render partial: 'comments/form', locals: {commentable: post} 
  end

  def render_comments
    h.render partial: 'comments/comments', locals: {commentable: post} 
  end

end

