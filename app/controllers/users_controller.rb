class UsersController < ApplicationController
  before_action :authenticate_user!

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        AdminMailer.new_user_sign_up_email(@user).deliver

        format.html { redirect_to root_path, notice: "Your membership is pending approval" }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :role, :approved)
  end
end
