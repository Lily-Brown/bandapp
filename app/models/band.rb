class Band < ApplicationRecord
  has_many :bands_instruments_musicians, dependent: :destroy
  has_many :musicians, through: :bands_instruments_musicians
  has_many :instruments, through: :bands_instruments_musicians

  belongs_to :musician # owner
  alias_method :owner, :musician


  has_attached_file :photo, :styles => { medium: "300x300>", thumb: "240x240>" }, :default_url => ":style/default-band-photo.png"
  validates_attachment :photo,
    content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

  validates_uniqueness_of :band_name, :slug, :case_sensitive => true
  validates :band_name, presence: true, :on => :create

  has_attached_file :mp3
  do_not_validate_attachment_file_type :mp3, :content_type => /.*/

  extend FriendlyId
    friendly_id :band_name, use: :slugged

  def members(band_id)
    BandInstrumentMusician.all.where.not({musician_id: nil}).all.where(band_id: band_id)
  end

  def openings(band_id)
    BandInstrumentMusician.all.where({musician_id: nil}).all.where(band_id: band_id)
  end

end
