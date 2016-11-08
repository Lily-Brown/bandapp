require "rails_helper"

RSpec.describe Band, type: :model do
  subject(:instrument) {Instrument.new}
  subject(:musician) {Musician.new}
  subject(:band) {Band.new}

  describe "::new" do
    it "initializes a new band" do
      expect(band).to be_a(Band)
    end
  end

  describe "::band_name" do
    it "has an band_name attribute" do
      band.band_name = "gwar"
      expect(band.band_name).to eq("gwar")
    end
  end

  describe Band do
    it { should validate_uniqueness_of(:band_name) }
  end

  describe Band do
    it { should validate_uniqueness_of(:slug) }
  end

  describe Band do
    it { should belong_to(:musician) }
  end

  describe Band do
    it do
      should have_and_belong_to_many(:musicians).
        join_table('band_instrument_musicians')
    end
  end

  describe Band do
    it do
      should have_and_belong_to_many(:instruments).
        join_table('band_instrument_musicians')
    end
  end

end
