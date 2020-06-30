class Course < ApplicationRecord
  has_many :visits
  has_many :users, through: :visits
  has_many :holes

  validates :name, :address, :description, :difficulty, presence: true

  validates :name, uniqueness: true
  validates :difficulty, inclusion: { in: %w[Expert Intermediate Beginner] }

  validates :description, length: { minimum: 100 }

  def total_par
    holes.map(&:par_score).sum
  end

  def total_distance
    holes.map(&:distance).sum
  end
end
