class MealsController < ApplicationController
  def index 
    @meals = Meal.all
  end

  def show
    
  end


end