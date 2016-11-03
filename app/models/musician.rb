class Musician < ApplicationRecord
  has_many :instrument_musicians, dependent: :destroy
  has_many :instruments, through: :instrument_musicians
  has_secure_password

  def self.confirm(params)
    @musician = Musician.find_by({email: params[:email]})
    @musician ? @musician.authenticate(params[:password]) : false
  end

end
