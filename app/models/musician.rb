class Musician < ApplicationRecord
  has_many :instrument_musicians, dependent: :destroy
  has_many :instruments, through: :instrument_musicians
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
