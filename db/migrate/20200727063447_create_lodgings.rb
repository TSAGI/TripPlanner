class CreateLodgings < ActiveRecord::Migration[6.0]
  def change
    create_table :lodgings do |t|
      t.string :name
      t.integer :destination_id

      t.timestamps
    end
  end
end
