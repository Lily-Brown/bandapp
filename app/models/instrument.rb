class Instrument < ApplicationRecord
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
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
