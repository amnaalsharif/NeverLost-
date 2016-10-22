class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:name, :phone, :email, :password, :password_confirmation)
    #params.require(:lending).permit(:tag_id)

  end

  def account_update_params
    params.require(:user).permit(:name, :phone, :email, :password, :password_confirmation, :current_password)
  end
end
