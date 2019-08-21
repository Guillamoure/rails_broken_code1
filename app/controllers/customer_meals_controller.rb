class CustomerMealsController < ApplicationController

  def index
    @meals = Meal.all
  end

  def show
    @meal = Meal.find(params[:id])
  end

  def new
    @customer_meal = CustomerMeal.new
    @customers = Customer.all
    @meals = Meal.all
  end

  def create
    @customer_meal = CustomerMeal.create(customer_meal_params)
    redirect_to customer_path(@customer_meal.customer)
  end

  private

  def customer_meal_params
    params.require(:customer_meal).permit(:customer_id, :meal_id)
  end
end
