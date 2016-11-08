class Band < ApplicationRecord
  has_attached_file :photo, :styles => { medium: "300x300>", thumb: "150x150>" }, :default_url => ":style/default-band-photo.png"
  validates_attachment :photo,
    content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

  validates_uniqueness_of :band_name, :slug, :case_sensitive => true
  validates :band_name, presence: true, :on => :create

  has_attached_file :mp3
  do_not_validate_attachment_file_type :mp3, :content_type => /.*/

  # owner
  belongs_to :musician
  alias_method :owner, :musician

  # membership in band w/ instrument
	has_and_belongs_to_many :musicians, join_table: :band_instrument_musicians
	has_and_belongs_to_many :instruments, join_table: :band_instrument_musicians

  extend FriendlyId
    friendly_id :band_name, use: :slugged

  def members 
    BandInstrumentMusician.all.where.not({musician_id: nil})
  end

end
