class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.date :check_in
      t.date :check_out
      t.integer :adults
      t.integer :kids
      t.references :hotel, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
