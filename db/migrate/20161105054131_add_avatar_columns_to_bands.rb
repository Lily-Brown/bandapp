class AddAvatarColumnsToBands < ActiveRecord::Migration[5.0]
  def up
    add_attachment :bands, :avatar
  end

  def down
    remove_attachment :bands, :avatar
  end
end
