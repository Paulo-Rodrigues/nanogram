class FollowController < ApplicationController

  def create
    current_account.follow(followable)

    redirect_to dashboard_path
  end

  private

  def followable
    @account ||= Account.find(params[:id])
  end
end
