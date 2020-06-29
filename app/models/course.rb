class Course < ApplicationRecord
  has_many :visits
  has_many :users, through: :visits
  has_many :holes

  def total_par
    holes.map(&:par_score).sum
  end

  def total_distance
    holes.map(&:distance).sum
  end
end
