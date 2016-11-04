class Musician < ApplicationRecord

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
  validates :email, uniqueness: true
  validates :password, length: { minimum: 6 }, :on => :create

  def self.confirm(params)
    @musician = Musician.find_by({email: params[:email]})
    @musician ? @musician.authenticate(params[:password]) : false
  end

end
