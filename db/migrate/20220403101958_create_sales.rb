class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.integer :customer_id
      t.integer :copy
      t.integer :game_id
      t.string :date
      t.integer :margin

      t.timestamps
    end
  end
end
