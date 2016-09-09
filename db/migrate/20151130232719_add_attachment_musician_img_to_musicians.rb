class AddAttachmentMusicianImgToMusicians < ActiveRecord::Migration
  def self.up
    change_table :musicians do |t|
      t.attachment :musician_img
    end
  end

  def self.down
    remove_attachment :musicians, :musician_img
  end
end
