class BooksController < ApplicationController
  skip_before_action :authenticate_user!, only:[:index, :show]
  before_action :fetch_book, only:[:show, :edit, :update, :destroy]

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    @transaction = Transaction.new
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user = current_user
    if @book.save
      redirect_to books_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @book.update(book_params)
    redirect_to @book
  end

  def destroy
    @book.destroy
    redirect_to books_path
  end

  private

  def fetch_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:name, :description, :author, :photo, :number_of_pages, :language, :publishing_year)
  end
end
