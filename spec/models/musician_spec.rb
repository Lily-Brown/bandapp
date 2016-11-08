require 'rails_helper'
require 'spec_helper'

RSpec.describe Musician, type: :model do

  it "has a valid factory" do
    Factory.create(:musician).should be_valid
  end

  it "is invalid without a name" do
    Factory.build(:musician, name: nil).should_not be_valid
  end

  it "is invalid without an email" do
    Factory.build(:musician, email: nil).should_not be_valid
  end

  it "is invalid without a password" do
    Factory.build(:musician, password: nil).should_not be_valid
  end

  it { should have_many(:bands) }
  it { should have_many(:instruments) }
  it { should belong_to(:bands) }
  it { should belong_to(:instruments) }

end
