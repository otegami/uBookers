class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    flash[:notice] = "Successfuly" if @user.update(user_params)
    redirect_to user_path(@user)
  end

  def index
    @user = User.find(current_user.id)
    @users = User.all
    @book = Book.new
  end

  private
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
end
