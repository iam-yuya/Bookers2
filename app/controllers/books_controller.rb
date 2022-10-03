class BooksController < ApplicationController

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    # @book（投稿データ）のuser_idを、current_user.id（今ログインしているユーザーのid）に
    # 指定することで投稿データに、ログイン中のユーザーのidを持たせている
    @book.save
    redirect_to book_path(current_user.id)
  end

  def index
    @books = Book.all
    @book = Book.new
    @user = current_user
  end

  def show
    @book = Book.find(params[:id])
    @user = current_user
  end

  def edit
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end


  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
