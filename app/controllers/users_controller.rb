class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    
    if !@user.save
      render :new, status: :unprocessable_entity  
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :gender, :email, :birthdate, :phone, :postalcode, :profile, :websiteurl, :termsandconditons, :role, :notes)
  end

end
