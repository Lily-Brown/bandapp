class CreateBands < ActiveRecord::Migration[5.0]
  def change
    create_table :bands do |t|
      t.string :band_name
      t.string :genres
      t.string :influences
      t.string :bio
      t.string :image
      t.string :audio_clip
      t.string :practice_frequency
      t.string :gear
      t.integer :zip_code
      t.belongs_to :musician, foreign_key: true

      t.timestamps
    end
  end
end
