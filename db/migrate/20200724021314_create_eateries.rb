class CreateEateries < ActiveRecord::Migration[6.0]
  def change
    create_table :eateries do |t|
      t.string :name
      t.integer :destinations_id

      t.timestamps
    end
  end
end
