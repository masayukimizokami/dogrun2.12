class UserController < ApplicationController


   def edit
    @user = User.find(params[:id])
   end

   def show
    @user = User.find(params[:id])
   end

   def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
   end

   private
   def user_params
     params.require(:user).permit(:name, :email, :profile, :encrypted_password,:image)
   end

end
