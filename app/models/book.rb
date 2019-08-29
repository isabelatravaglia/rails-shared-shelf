class Book < ApplicationRecord
  belongs_to :user
  has_many :transactions, dependent: :destroy
  validates :name, presence: true
  validates :author, presence: true
  validates :language, presence: true
  validates :number_of_pages, presence: true
  validates :publishing_year, presence: true
  validates :description, presence: true
  validates :user_id, presence: true
  validates :photo, presence: true
  mount_uploader :photo, PhotoUploader

  include PgSearch::Model
  pg_search_scope :search_by_book_feature,
    against: [ :name, :author, :language, :description, :publishing_year ],
    using: {
      tsearch: { prefix: true }
    }

end
