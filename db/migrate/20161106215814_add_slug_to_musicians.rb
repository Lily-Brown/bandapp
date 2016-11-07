class AddSlugToMusicians < ActiveRecord::Migration[5.0]
  def change
    add_column :musicians, :slug, :string
    add_index :musicians, :slug, unique: true
  end
end
