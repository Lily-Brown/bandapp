class Band < ApplicationRecord

	# owner
  belongs_to :musician

  # membership in band w/ instrument
  # has_many :band_instrument_musicians, dependent: :destroy
  # has_many :musicians, through: :band_instrument_musicians
  # has_many :instruments, through: :band_instrument_musicians

	has_and_belongs_to_many :musicians, join_table: :band_instrument_musicians
	has_and_belongs_to_many :instruments, join_table: :band_instrument_musicians


end
