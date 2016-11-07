class Musician < ApplicationRecord
  has_attached_file :photo, :styles => { medium: "300x300>", thumb: "150x150>" }, :default_url => ":style/default-musician-photo.png"
  validates_attachment :photo,
  content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

  has_attached_file :mp3
  do_not_validate_attachment_file_type :mp3, :content_type => /.*/


  # membership in band w/ instrument
  # has_many :band_instrument_musicians, dependent: :destroy
  # has_many :instruments, through: :band_instrument_musicians
  # has_many :bands, through: :band_instrument_musicians
  has_and_belongs_to_many :bands, join_table: :band_instrument_musicians
  has_and_belongs_to_many :instruments, join_table: :band_instrument_musicians

  # musician's instruments
  has_many :instrument_musicians, dependent: :destroy
  has_many :instruments, through: :instrument_musicians

  # owner
  has_many :bands

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
