class CustomerMeal < ApplicationRecord
  belongs_to :customers
  belongs_to :meal
end
