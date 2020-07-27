class DropAttractions < ActiveRecord::Migration[6.0]
  def change
    drop_table :attractions
  end
end
