class Api::V1:UsersController < ApplicationController

  before_action :set_user, only: [:show, :update, :destroy]

  

private

  def set_user
      @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

end
