class BandInstrumentMusician < ApplicationRecord
	alias_method :member, :band_instrument_musician
  belongs_to :musician
  belongs_to :instrument
  belongs_to :band
end
