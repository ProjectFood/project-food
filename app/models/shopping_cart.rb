class ShoppingCart < ActiveRecord::Base
  acts_as_shopping_cart
  
  has_many :shopping_cart_items
end
