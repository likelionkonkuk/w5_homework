class AddAttachmentImageToMaxims < ActiveRecord::Migration
  def self.up
    change_table :maxims do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :maxims, :image
  end
end
