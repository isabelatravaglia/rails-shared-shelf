class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :photo
      t.string :phone_number
      t.string :address
      t.references :user,foreign_key: true


      t.timestamps
    end
  end
end