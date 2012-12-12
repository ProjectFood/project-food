class AddFieldsToShoppingCartItems < ActiveRecord::Migration
  def change
    add_column :shopping_cart_items, :user_id, :integer
    add_column :shopping_cart_items, :meal_id, :integer
    add_column :shopping_cart_items, :price, :float
    add_column :shopping_cart_items, :quantity, :integer
  end
end