class Transaction < ApplicationRecord
  belongs_to :book
  belongs_to :user
  validates :user_id, presence: true
  validates :book_id, presence: true
  validates :borrow_date, presence: true
  validates :return_date, presence: true
  validate :borrow_date_starting_today
  validate :validate_other_booking_overlap

  private

  def borrow_date_starting_today
    return if return_date.blank? || borrow_date.blank?

      if borrow_date < Date.today
        errors.add(:borrow_date, "cannot be in the past.")
      end
  end

  def validate_other_booking_overlap
    sql = ":book_id = book_id and :return_date >= borrow_date and return_date >= :borrow_date"
    is_overlapping = Transaction.where(sql, book_id: book_id, borrow_date: borrow_date, return_date: return_date).exists?
    errors.add(:borrow_date, "isn't valid. This book won't be available in the period you chose. Please choose another date.") if is_overlapping
  end
end

# sql = ":book.id = book.id and :return_date >= borrow_date and return_date >= :borrow_date"
# is_overlapping = Transaction.where(sql, book_id: book_id, borrow_date: Date.new(2019, 8, 30), return_date: Date.new(2019, 9, 8)).exists?
