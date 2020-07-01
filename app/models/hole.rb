class Hole < ApplicationRecord
  belongs_to :course

  validates :valid_hole
  validates :valid_par
  validates :hole_number,
            uniqueness: { scope: :course_id,
                          message: "A basket number must be unique." }

  scope :by_number, -> { order(:hole_number) }

private

  def valid_hole
    errors.add(:hole_number, "Hole must be greater than 0") \
    if hole_number.nil? || hole_number <= 0
  end

  def valid_par
    errors.add(:par_score, "Par Score Is Never Less Than 3") \
    if par_score.nil? || par_score <= 3
  end
end
