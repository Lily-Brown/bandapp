class Band < ApplicationRecord
  has_attached_file :photo, :styles => { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment :photo,
    content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
  validates :band_name, uniqueness: true

  has_attached_file :mp3
  do_not_validate_attachment_file_type :mp3, :content_type => /.*/

  # owner
  belongs_to :musician

  # membership in band w/ instrument
	has_and_belongs_to_many :musicians, join_table: :band_instrument_musicians
	has_and_belongs_to_many :instruments, join_table: :band_instrument_musicians

  extend FriendlyId
    friendly_id :band_name, use: :slugged

end
