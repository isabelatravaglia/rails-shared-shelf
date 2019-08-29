class BooksController < ApplicationController
  skip_before_action :authenticate_user!, only:[:index, :show]
  before_action :fetch_book, only:[:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @results = policy_scope(Book).order(:created_at).search_by_book_feature(params[:query])
    else
      @results = policy_scope(Book).order(:created_at)
    end
  end

  def show
    @book = Book.find(params[:id])
    @transaction = Transaction.new
    @results = Book.search_by_book_feature(params[:query])
  end

  def new
    @book = Book.new
    authorize @book
  end

  def create
    @book = Book.new(book_params)
    authorize @book
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
    redirect_to books_path
  end

  def destroy
    @book.destroy
    redirect_to books_path
  end

  private

  def fetch_book
    @book = Book.find(params[:id])
    authorize @book
  end

  def book_params
    params.require(:book).permit(:name, :description, :author, :photo, :number_of_pages, :language, :edition, :genre)
  end
end
