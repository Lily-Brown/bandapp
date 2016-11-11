class RenameAllTheJoins < ActiveRecord::Migration[5.0]
  def change
    rename_table :band_instrument_musicians, :bands_instruments_musicians
    rename_table :instrument_musicians, :instruments_musicians
  end
end
