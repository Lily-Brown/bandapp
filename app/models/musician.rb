class Musician < ApplicationRecord
  has_many :instrument_musicians, dependent: :destroy
  has_many :instruments, through: :instrument_musicians
end
