class FollowController < ApplicationController

  def index
    if params[:query].present?
      @accounts = SearchService.new(params[:query]).call
    else
      @accounts = current_account.followings
    end
  end

  def create
    current_account.follow(followable)

    redirect_back(fallback_location: dashboard_path)
  end

  def destroy
    current_account.unfollow(followable)

    redirect_back(fallback_location: dashboard_path)
  end

  private

  def followable
    @account ||= Account.find(params[:id])
  end
end
