class Book < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :author, presence: true
  validates :language, presence: true
  validates :number_of_pages, presence: true
  validates :publishing_year, presence: true
  validates :description, presence: true
  validates :user_id, presence: true
  validates :photo, presence: true
  mount_uploader :photo, PhotoUploader
end
