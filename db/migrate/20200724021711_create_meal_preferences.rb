class CreateMealPreferences < ActiveRecord::Migration[6.0]
  def change
    create_table :meal_preferences do |t|
      t.boolean :gluten_free
      t.boolean :vegetarian
      t.boolean :vegan
      t.boolean :dairy_free
      t.boolean :low_sodium
      t.boolean :kosher
      t.boolean :halal
      t.integer :user_id

      t.timestamps
    end
  end
end
