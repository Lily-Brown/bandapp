class AddAvatarColumnsToMusicians < ActiveRecord::Migration[5.0]
  def up
    add_attachment :musicians, :avatar
  end

  def down
    remove_attachment :musicians, :avatar
  end
end
