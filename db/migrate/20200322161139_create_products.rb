class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :current_price
      t.string :description
      t.string :images

      t.timestamps
    end
  end
end

