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
  def new
    @title = "Log In"
  end

  def create
    @title = "Log In"
    user_email = User.find_for_authentication(email: params[:users][:login])
    user_username = User.find_for_authentication(username: params[:users][:login])

    if user_email && user_email.valid_password?(params[:users][:password])
      sign_in(user_email)
      redirect_to root_url
    elsif user_username && user_username.valid_password?(params[:users][:password])
      sign_in(user_username)
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
  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [:username])
  end
end
