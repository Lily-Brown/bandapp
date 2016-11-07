require 'rails_helper'

RSpec.describe Instrument, type: :model do
  subject(:instrument) {Instrument.new}
  subject(:musician) {Musician.new}
  subject(:band) {Band.new}

  describe "::new" do
    it "initializes a new instrument" do
      expect(instrument).to be_a(Instrument)
    end
  end

  describe "::instrument_name" do
    it "has an name attribute" do
      instrument.instrument_name = "trumpet"
      expect(instrument.instrument_name).to eq("trumpet")
    end
  end

  describe "::musicians" do
    it "can belong to a musician" do
      instrument.musicians << musician
      expect(instrument.musicians).to eq([musician])
    end
    it "can belong to many musicians" do
      musician2 = Musician.new
      instrument.musicians << musician2
      instrument.musicians << musician
      expect(instrument.musicians).to eq([musician2,musician])
    end
  end

  describe "::bands" do
    it "can belong to a band" do
      instrument.bands << band
      expect(instrument.bands).to eq([band])
    end
    it "can belong to many musicians" do
      band2 = Band.new
      instrument.bands << band
      instrument.bands << band2
      expect(instrument.bands).to eq([band,band2])
    end
  end

end
