class Transaction < ApplicationRecord
  belongs_to :book
  belongs_to :user
  validates :user_id, presence: true
  validates :book_id, presence: true
  validates :borrow_date, presence: true
  validates :return_date, presence: true
  validate :borrow_date_starting_today

  private

  def borrow_date_starting_today
    return if return_date.blank? || borrow_date.blank?

      if borrow_date < Date.today
        errors.add(:borrow_date, "cannot be in the past.")
      end
  end
end
