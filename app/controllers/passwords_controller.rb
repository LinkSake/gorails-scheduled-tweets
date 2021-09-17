class PasswordsController < ApplicationController
  before_action :require_current_user

  def edit
  end

  def update
    if Current.user.update(password_params)
      redirect_to root_path, notice: 'Password was successfully updated.'
    else
      render :edit
    end
  end

  private

  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end
  
end