class Meal < ApplicationRecord
  has_many :customer_meals
  has_many :customer, through: :customer_meals
end
