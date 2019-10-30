class AccountsController < ApplicationController
  before_action :authenticate_account!
  before_action :set_account, only: [:show]

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    #user profile
  end

  private

  def set_account
    @account = Account.find_by_username(params[:username])
  end
end
