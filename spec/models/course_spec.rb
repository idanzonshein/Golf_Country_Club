require 'rails_helper'

RSpec.describe Course, type: :model do
  describe "is not valid" do
    it "without a name" do
      expect(build :course, name: nil).to be_invalid
    end

    it "without a unique name" do
      create :course
      expect(build :course).to be_invalid
    end

    it "without an address" do
      expect(build :course, address: nil).to be_invalid
    end

    it "without a description" do
      expect(build :course, description: nil).to be_invalid
    end

    it "with a short description" do
      expect(build :course, description: "This is all").to be_invalid
    end

    it "without a difficulty" do
      expect(build :course, difficulty: nil).to be_invalid
    end
  end

  it "has a valid factory" do
    expect(build(:course)).to be_valid
  end
end