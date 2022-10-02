class UsersController < ApplicationController

  def index
    @book = Book.new
    @users = User.all
    @user = current_user
  end

  def show

  end

  def destroy
  end

  def edit
  end
end
