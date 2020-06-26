class Course < ApplicationRecord
  has_many :visits
  has_many :users, through: :visits
  has_many :holes
end
