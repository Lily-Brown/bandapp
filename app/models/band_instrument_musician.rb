class BandInstrumentMusician < ApplicationRecord
  belongs_to :musician
  belongs_to :instrument
  belongs_to :band
end
