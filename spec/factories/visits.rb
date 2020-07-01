FactoryBot.define do
  factory :visit do
    user
    course
    date_time { "07/01/2020" }
    conditions { "Excellent" }
    score { "95" }
  end
end
