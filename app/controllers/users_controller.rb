class UsersController < ApplicationController

  def index
    @book = Book.new
    @users = User.all
    @user = current_user
  end

  def show
    @user = current_user
    @book = Book.find(params[:id])
  end

  def destroy
  end

  def edit
  end
end
