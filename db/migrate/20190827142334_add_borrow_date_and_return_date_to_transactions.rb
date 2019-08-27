class AddBorrowDateAndReturnDateToTransactions < ActiveRecord::Migration[5.2]
  def change
    add_column :transactions, :borrow_date, :date
    add_column :transactions, :return_date, :date
  end
end
