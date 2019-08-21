class CustomerMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :customer_meals do |t|
      t.integer :customer_id
      t.integer :meal_id
    end
  end
end
