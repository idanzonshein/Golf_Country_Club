require 'rails_helper'

RSpec.describe Hole, type: :model do
  describe "is not valid" do
    it "without a hole number" do
      expect(build :hole, hole_number: nil).to be_invalid
    end

    it "without a unique hole number" do
      create :hole
      expect(build :hole).to be_invalid
    end

    it "without a distance" do
      expect(build :hole, distance: nil).to be_invalid
    end

    it "without a par_score" do
      expect(build :hole, par_score: nil).to be_invalid
    end
  end

  it "has a valid factory" do
    expect(build(:hole)).to be_valid
  end

end