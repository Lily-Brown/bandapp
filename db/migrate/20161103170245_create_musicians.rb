class CreateMusicians < ActiveRecord::Migration[5.0]
  def change
    create_table :musicians do |t|
      t.string :name
      t.string :genres
      t.string :influences
      t.string :bio
      t.integer :zip_code
      t.string :image
      t.string :audio_clip
      t.string :email
      t.string :password_digest
      t.string :practice_frequency
      t.string :gear

      t.timestamps
    end
  end
end
