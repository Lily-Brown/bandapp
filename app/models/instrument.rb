class Instrument < ApplicationRecord
  has_many :instrument_musicians, dependent: :destroy
  has_many :musicians, through: :instrument_musicians
end
