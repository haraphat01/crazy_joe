class RemoveGameIdFromCustomers < ActiveRecord::Migration[7.0]
  def change
    remove_column :customers, :game_id, :integer
  end
end
