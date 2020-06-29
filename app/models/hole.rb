class Hole < ApplicationRecord
  belongs_to :course

  scope :by_number, -> { order(:hole_number) }




end
