class RegistrationsController < Devise::RegistrationsController

    def create
      redirect_to root_path
    end  

    private
  
    def sign_up_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
  
    def account_update_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation, :current_password)
    end
  end