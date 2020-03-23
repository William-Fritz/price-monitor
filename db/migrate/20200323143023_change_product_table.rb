class ChangeProductTable < ActiveRecord::Migration[6.0]
  def up
    add_column :products, :url, :string
    remove_column :products, :images
    add_column :products, :image_url, :string
  end

  def down
    remove_column :products, :image_url
    add_column :products, :images, :string
    remove_column :products, :url, :string
  end
end

