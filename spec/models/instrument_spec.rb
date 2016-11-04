require 'rails_helper'

RSpec.describe Instrument, type: :model do
  subject(:instrument) {Instrument.new}

  describe "::new" do
    it "initializes a new instrument" do
      expect(instrument).to be_a(Instrument)
    end
  end
end
