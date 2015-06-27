class CreateWebImages < ActiveRecord::Migration
  def change
    create_table :web_images do |t|
      t.text :caption

      t.timestamps null: false
    end
  end
end
