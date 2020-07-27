class DropLodgings < ActiveRecord::Migration[6.0]
  def change
    drop_table :lodgings
  end
end
