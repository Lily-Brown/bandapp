class Musician < ApplicationRecord
  has_many :owned_bands, class_name: "Band" # as owner of band

  has_many :bands_instruments_musicians, dependent: :destroy
  has_many :bands, through: :bands_instruments_musicians # as member of band

  has_and_belongs_to_many :band_instruments, # through a band
          through: :bands_instruments_musicians, class_name: "Instrument"

  has_and_belongs_to_many :instruments # not through a band



  has_attached_file :photo, :styles => { medium: "300x300>", thumb: "240x240>" }, :default_url => ":style/default-musician-photo.png"
  validates_attachment :photo,
  content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

  has_attached_file :mp3, :default_url => ":style/Please edit your profile to add an MP3.mp3"
  do_not_validate_attachment_file_type :mp3, :content_type => /.*/

  has_secure_password
  validates :name, :email, :password, presence: true, :on => :create
  validates :email, :name, uniqueness: true
  validates :password, length: { minimum: 6 }, :on => :create

  extend FriendlyId
    friendly_id :name, use: :slugged

  def self.confirm(params)
    @musician = Musician.find_by({email: params[:email]})
    @musician ? @musician.authenticate(params[:password]) : false
  end

end
