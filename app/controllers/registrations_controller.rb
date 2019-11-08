class RegistrationsController < Devise::RegistrationsController
  # before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def after_sign_up_path_for(account)
    # profile_path(account.username)
    profile_path(account.username)
  end

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(
  #     :account_update, keys: [
  #       :username, :first_name, :email,
  #       :last_name, :bio, :avatar,
  #       :password, :password_confirmation
  #     ]
  #   )


  #   devise_parameter_sanitizer.permit(
  #     :signup, keys:[
  #       :username, :email, :password,
  #       :password_confirmation
  #     ]
  #   )
  # end


end
