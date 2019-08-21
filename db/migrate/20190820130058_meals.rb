class Meals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :name
      t.float :price
      t.integer :calories
    end
  end
end
