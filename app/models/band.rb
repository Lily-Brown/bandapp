class Band < ApplicationRecord
  has_attached_file :photo, :styles => { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment :photo,
  content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

  # owner
  belongs_to :musician

  # membership in band w/ instrument
  # has_many :band_instrument_musicians, dependent: :destroy
  # has_many :musicians, through: :band_instrument_musicians
  # has_many :instruments, through: :band_instrument_musicians

	has_and_belongs_to_many :musicians, join_table: :band_instrument_musicians
	has_and_belongs_to_many :instruments, join_table: :band_instrument_musicians


end
