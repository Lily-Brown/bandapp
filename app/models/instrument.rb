class Instrument < ApplicationRecord
  has_many :bands_instruments_musicians, dependent: :destroy
  has_many :musicians, through: :bands_instruments_musicians
  has_many :bands, through: :bands_instruments_musicians
  has_and_belongs_to_many :band_musicians, through: :bands_instruments, class_name: "Musician"

  extend FriendlyId
  friendly_id :instrument_name, use: :slugged
end
