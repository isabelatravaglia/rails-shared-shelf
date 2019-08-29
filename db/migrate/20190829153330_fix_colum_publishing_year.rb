class FixColumPublishingYear < ActiveRecord::Migration[5.2]
  def change
    rename_column :books, :publishing_year, :edition
  end
end
