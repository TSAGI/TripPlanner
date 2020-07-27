# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end
  def create
    user = User.find_for_authentication(email: params[:user][:email])

    if user && user.valid_password?(params[:user][:password])
      sign_in(user)
      redirect_to root_url
    else
      render :new
    end
  end

  def destroy
    sign_out(current_user)
    redirect_to root_url
  end
  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
