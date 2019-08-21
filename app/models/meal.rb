class Meal < ApplicationRecord
  has_many :customer_meals
  has_many :customers, through: :customer_meals
end
