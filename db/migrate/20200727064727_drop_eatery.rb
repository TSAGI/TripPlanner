class DropEatery < ActiveRecord::Migration[6.0]
  def change
    drop_table :eateries
  end
end
