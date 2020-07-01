require 'rails_helper'

RSpec.describe User, type: :model do
  describe "is not valid" do
    it "without a name" do
      expect(build :user, name: nil).to be_invalid
    end

    it "without a age" do
      expect(build :user, age: nil).to be_invalid
    end

    it "without a skill level" do
      expect(build :user, skill_level: nil).to be_invalid
    end

    it "without an email" do
      expect(build :user, email: nil).to be_invalid
    end

    it "without a valid email" do
      expect(build :user, email: "?.com").to be_invalid
    end
  end

  it "has a valid factory" do
    expect(build(:user)).to be_valid
  end
end



