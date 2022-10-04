class UsersController < ApplicationController

  def index
    @book = Book.new
    @users = User.all
    @user = current_user
  end

  def show
    @book = Book.new
    @user = User.find(params[:id])
    @books = @user.books
  end

  def destroy
  end

  def edit
  end

  private

  def user_params
    params.require(:user).permit(:introduction, :name, :profile_image)
  end
end
