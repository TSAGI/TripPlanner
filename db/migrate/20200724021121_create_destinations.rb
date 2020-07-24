class CreateDestinations < ActiveRecord::Migration[6.0]
  def change
    create_table :destinations do |t|
      t.string :leaving_from
      t.string :arriving_to
      t.date :start_date
      t.date :end_date
      t.integer :trip_id

      t.timestamps
    end
  end
end
