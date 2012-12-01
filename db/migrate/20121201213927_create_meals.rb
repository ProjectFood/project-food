class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :category
      t.string :description
      t.string :photo
      t.float :price
      t.integer :user_id
      t.integer :review_id

      t.timestamps
    end
  end
end
