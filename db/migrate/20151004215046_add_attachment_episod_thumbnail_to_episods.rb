class AddAttachmentEpisodThumbnailToEpisods < ActiveRecord::Migration
  def self.up
    change_table :episods do |t|
      t.attachment :episod_thumbnail
    end
  end

  def self.down
    remove_attachment :episods, :episod_thumbnail
  end
end
