class Instrument < ApplicationRecord

	# instruments a musician plays
  has_many :instrument_musicians, dependent: :destroy
  has_many :musicians, through: :instrument_musicians

  # membership in band w/ instrument
  # has_many :band_instrument_musicians, dependent: :destroy
  # has_many :musicians, through: :band_instrument_musicians
  # has_many :bands, through: :band_instrument_musicians

  has_and_belongs_to_many :musicians, join_table: :band_instrument_musicians
	has_and_belongs_to_many :bands, join_table: :band_instrument_musicians
end
