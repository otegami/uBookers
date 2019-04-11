class UsersController < ApplicationController
  def show
    @user = User.find(current_user.id)
    @books = @user.books
  end

  def index
    @users = User.all
  end
end
