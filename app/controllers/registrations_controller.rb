class RegistrationsController < Devise::RegistrationsController

  protected

  def after_sign_up_path_for(account)
    profile_path(account.username)
  end

  # def after_sign_in_path_for(account)
  #   dashboard_path
  # end
end
