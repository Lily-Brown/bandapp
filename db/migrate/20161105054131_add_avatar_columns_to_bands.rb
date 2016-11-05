class AddAvatarColumnsToBands < ActiveRecord::Migration[5.0]
  def up
    add_attachment :bands, :photo
  end

  def down
    remove_attachment :bands, :photo
  end
end
