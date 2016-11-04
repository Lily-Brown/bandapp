class CreateBandInstrumentMusicians < ActiveRecord::Migration[5.0]
  def change
    create_table :band_instrument_musicians do |t|
      t.belongs_to :musician, foreign_key: true
      t.belongs_to :instrument, foreign_key: true
      t.belongs_to :band, foreign_key: true

      t.timestamps
    end
  end
end
