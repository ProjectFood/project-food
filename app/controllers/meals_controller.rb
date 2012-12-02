class MealsController < ApplicationController
  def index
    @meals = Meal.all
  end

  def show
    if params[:user_id]
      @user = User.find(params[:user_id])
      @meal = @user.meals.find(params[:id])
    else
      @meal = Meal.find(params[:id])
    end
  end

  def new
    @user = User.find(params[:user_id])
    @meal = Meal.new
  end

  def edit
    @user = User.find(params[:user_id])
    @meal = @user.meals.find(params[:id])
  end

  def create
    @user = User.find(params[:user_id])
    @meal = @user.meals.build(params[:meal])
    if @meal.save
      redirect_to user_meals_path(@user), notice: 'Your meal is ready to be served!'
    else
      render :new, error: 'Hmm something went wrong..'
    end
  end

  def update
    @user = User.find(params[:user_id])
    @meal = @user.meals.find(params[:id])
    if @meal.update_attributes(params[:meal])
      redirect_to user_meals_path(@user), notice: 'Your meal was updated!'
    else
      render :edit, error: 'Hmm something went wrong..'
    end
  end
end
