class AccountsController < ApplicationController
  before_action :authenticate_account!
  before_action :set_account, only: [:show]

  def index
    @posts = current_account.posts.with_eager_loaded_image.order(created_at: :desc)

    @follow_suggestions = Account.where.not(id: current_account.followed_ids).limit(8)
  end

  def show
    #user profile
  end

  private

  def set_account
    @account = Account.find_by_username(params[:username])
  end
end
