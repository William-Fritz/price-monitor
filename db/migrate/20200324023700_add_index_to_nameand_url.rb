class AddIndexToNameandUrl < ActiveRecord::Migration[6.0]
  def up
    add_index :products, :name, unique: true
    add_index :products, :url, unique: true
  end

  def down
    remove_index :products, :url
    remove_index :products, :name
  end
end

