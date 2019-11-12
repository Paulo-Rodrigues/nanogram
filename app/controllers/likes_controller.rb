class LikesController < ApplicationController
  def create
    current_account.like(@votable)

    redirect_back(fallback_location: dashboard_path)
  end

  def destroy
    current_account.unlike(@votable)

    redirect_back(fallback_location: dashboard_path)
  end
end
