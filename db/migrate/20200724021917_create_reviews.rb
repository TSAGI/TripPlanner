class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.text :review
      t.float :rating
      t.integer :user_id

      t.timestamps
    end
  end
end
