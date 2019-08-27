class Transaction < ApplicationRecord
  belongs_to :book
  belongs_to :user
  validates :user_id, presence: true
  validates :book_id, presence: true
  validates :borrow_date, presence: true
  validates :return_date, presence: true
  validate :return_date_after_borrow_date

  private

  def return_date_after_borrow_date
    return if return_date.blank? || borrow_date.blank?

      if return_date < borrow_date
        errors.add(:return_date, "must be after the start date")
      end
  end
end
