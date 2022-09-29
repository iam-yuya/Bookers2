class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to book_path(current_user.id)
  end

  def index
    @books = Book.all
  end

  def show
  end


  private

  def book_params
    params.require(:book).permit(:title, :body, :image)
  end

end
