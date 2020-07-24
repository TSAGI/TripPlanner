class CreateAttractions < ActiveRecord::Migration[6.0]
  def change
    create_table :attractions do |t|
      t.string :name
      t.date :date
      t.integer :destinations_id

      t.timestamps
    end
  end
end
