class CustomerMeal < ApplicationRecord
  belongs_to :customer
  belongs_to :meal
end
