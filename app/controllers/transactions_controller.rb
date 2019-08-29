class TransactionsController < ApplicationController
  before_action :fetch_book

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(transaction_params) # user_id, book_id
    @transaction.user = current_user
    @transaction.book = @book
    @transaction.return_date = @transaction.borrow_date + 10
    # raise
    if @transaction.save
      render :show
    else
      redirect_to book_path(@book)
    end
  end

  def show
    @transaction = Transaction.find(params[:transaction_id])
    @book = @transaction.book
  end

  private

  def transaction_params
    params.require(:transaction).permit(:borrow_date, :return_date, :book_id)
  end

  def fetch_book
    @book = Book.find(params[:book_id])
  end
end
