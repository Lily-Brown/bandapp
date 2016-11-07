class AddAttachmentMp3ToMusicians < ActiveRecord::Migration
  def self.up
    change_table :musicians do |t|
      t.attachment :mp3
    end
  end

  def self.down
    remove_attachment :musicians, :mp3
  end
end
