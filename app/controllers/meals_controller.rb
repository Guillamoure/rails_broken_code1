class MealsController < ApplicationController

  def index
    @meals = Meal.all
  end

  def show
    @meal = Meal.find(params[:id])
  end

  def create
    @meal = Meal.create(meal_params)
    redirect_to meals_path
  end

  private

  def meal_params
    params.require(:meal).permit(:name, :price, :calories)
  end
end
