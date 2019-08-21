class Customer < ApplicationRecord
  has_many :customer_meals
  has_many :meals, through: :customer_meals

  def money_spent
    self.meals.reduce(0) {| agg, meal| agg + meal.price}.round(2)
  end

  def calories_consumed
    self.meals.reduce(0) {| agg, meal| agg + meal.calories}
  end
end
