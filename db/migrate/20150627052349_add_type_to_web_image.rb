class AddTypeToWebImage < ActiveRecord::Migration
  def change
    add_column :web_images, :type, :string
    add_column :web_images, :image_id, :string
  end
end
