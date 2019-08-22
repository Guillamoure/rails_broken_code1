class CustomerMealsController < ApplicationController

  def new
    @customer_meal = CustomerMeal.create
  end

  def create
    @customer_meal = CustomerMeal.create(customer_meal_params)
    redirect_to customer_path(@customer_meal)
  end

  private

  def customer_meal_params
    params.require(:customer_meal).permit(:customer_id, :meal_id)
  end
end
