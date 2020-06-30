class Visit < ApplicationRecord
  belongs_to :user
  belongs_to :course

  def date
    date_time.strftime("%m/%d/%Y")
  end
end
