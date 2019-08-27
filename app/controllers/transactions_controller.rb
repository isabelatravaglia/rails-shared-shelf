class TransactionsController < ApplicationController
  before_action :fetch_book

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(book_id: params[:book_id].to_i) # user_id, book_id
    @transaction.user = current_user
    @transaction.save
    render :show
  end

  def show
    @transaction = Transaction.find(params[:transaction_id])
    @book = @transaction.book
  end

  private

  def fetch_book
    @book = Book.find(params[:book_id])
  end
end
