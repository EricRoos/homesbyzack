class AddAttachmentImageToWebImages < ActiveRecord::Migration
  def self.up
    change_table :web_images do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :web_images, :image
  end
end
