class AddPortionsToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :portion, :integer
  end
end
