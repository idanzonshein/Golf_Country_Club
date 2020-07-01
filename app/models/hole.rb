class Hole < ApplicationRecord
  belongs_to :course
  validates :hole_number, :distance, :par_score, presence: true
  validates :hole_number,
            uniqueness: { scope: :course_id,
                          message: "A basket number must be unique." }

  scope :by_number, -> { order(:hole_number) }
end
