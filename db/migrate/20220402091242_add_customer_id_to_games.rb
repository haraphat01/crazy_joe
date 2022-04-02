class AddCustomerIdToGames < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :customer_id, :integer
  end
end
