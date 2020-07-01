require 'rails_helper'

RSpec.describe Visit, type: :model do
  describe "is not valid" do
    it "without a score" do
      expect(build :visit, score: nil).to be_invalid
    end

    it "without a date" do
      expect(build :visit, date_time: nil).to be_invalid
    end

    it "without a condition" do
      expect(build :visit, conditions: nil).to be_invalid
    end
  end

  it "has a valid factory" do
    expect(build(:visit)).to be_valid
  end

  it "is valid with a user_id and a course_id" do
    visit = build(:visit)
    expect(visit).to be_valid
  end

  it "belongs to one course" do
    course = build(:course)
    visit = build(:visit, course: course)
    expect(visit.course).to eq(course)
  end
end