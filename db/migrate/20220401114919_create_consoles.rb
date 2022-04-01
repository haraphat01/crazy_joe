class CreateConsoles < ActiveRecord::Migration[7.0]
  def change
    create_table :consoles do |t|
      t.string :name
      t.string :manufacturer
      t.string :colour
      t.string :price
      t.string :status
      t.integer :stock

      t.timestamps
    end
  end
end
