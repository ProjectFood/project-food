class ShoppingCartsController < ApplicationController
  
  before_filter :extract_shopping_cart

  def create
    @meal = Meal.find(params[:id])
    @shopping_cart.add(@meal, @meal.price)
    redirect_to shopping_cart_path
  end

  def show

  end

  private
  
  def extract_shopping_cart
    shopping_cart_id = session[:shopping_cart_id]
    @shopping_cart = session[:shopping_cart_id] ? ShoppingCart.find(shopping_cart_id) : ShoppingCart.create
    session[:shopping_cart_id] = @shopping_cart.id
  end
  
end
