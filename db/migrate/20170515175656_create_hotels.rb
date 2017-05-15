class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.string :email
      t.text :description
      t.text :special_offers
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
