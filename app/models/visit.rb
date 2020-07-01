class Visit < ApplicationRecord
  belongs_to :user
  belongs_to :course

  validates :score, :date_time, :conditions, presence: true


  def date
    date_time.strftime("%m/%d/%Y")
  end
end
