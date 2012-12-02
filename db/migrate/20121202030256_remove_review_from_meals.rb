class RemoveReviewFromMeals < ActiveRecord::Migration
  def up
    remove_column :meals, :review_id
  end

  def down
    add_column :meals, :review_id, :integer
  end
end
