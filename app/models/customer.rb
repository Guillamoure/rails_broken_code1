class Customer < ApplicationRecord
  belongs_to :customer_meals
  has_many :meals, through: :customer_meals

  def money_spent
    @customer.meals.reduce(0) {| agg, meal| agg + meal.price}.round(2)
  end

  def calories_consumed
    self.meals.reduce(0) {| agg, meal| agg + meal.calories}
  end
end
