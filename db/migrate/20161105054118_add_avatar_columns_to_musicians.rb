class AddAvatarColumnsToMusicians < ActiveRecord::Migration[5.0]
  def up
    add_attachment :musicians, :photo
  end

  def down
    remove_attachment :musicians, :photo
  end
end
