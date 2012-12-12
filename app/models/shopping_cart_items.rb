class ShoppingCartItems < ActiveRecord::Base
  acts_as_shopping_cart_item
  
  belongs_to :shopping_cart
end
