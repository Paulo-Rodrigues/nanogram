class AccountPresenter < BasePresenter
  presents :account
  delegate :username, to: :account

  def avatar
    handle_none_given account.avatar do
      h.image_tag(account.avatar, class: 'avatar') 
    end
  end

  def edit_profile
    h.link_to "Edit Profile", h.edit_account_registration_path if same_user
  end

  def follow_unfollow
    if h.current_account.following?(account) 
      h.link_to "Unfollow", h.unfollow_account_path(account), method: :delete unless same_user
    else
      h.link_to "Follow", h.follow_account_path(account), method: :post unless same_user
    end
  end

  def first_name
    handle_none_given account.username do
      account.first_name
    end
  end

  def last_name
    handle_none_given account.last_name do
      account.last_name 
    end
  end

  def followings_total
    account.followings.count
  end

  def follows_total
    account.follows.count
  end

  def bio
    account.bio
  end

  def render_posts
    h.render 'show_posts'
  end

  private

  def same_user
    h.current_account == account
  end

  def handle_none_given(value)
    if value.present?
      yield
    else
      h.content_tag :span, ""
    end
  end
end


