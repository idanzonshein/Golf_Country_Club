class Hole < ApplicationRecord
  belongs_to :course
  # validates
  validates :hole_number,
            uniqueness: { scope: :course_id,
                          message: "A basket number must be unique." }

  scope :by_number, -> { order(:hole_number) }
end
