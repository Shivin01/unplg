class AddAttachmentMp3ToEpisods < ActiveRecord::Migration
  def self.up
    change_table :episods do |t|
      t.attachment :mp3
    end
  end

  def self.down
    remove_attachment :episods, :mp3
  end
end
