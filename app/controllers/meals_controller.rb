class MealsController < ApplicationController
  def index
    @meals = Meal.all
  end

  def show
    @meal = Meal.find(params[:id])
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(params[:poll])
    if @poll.save
      redirect_to :back
    end
  end


end
