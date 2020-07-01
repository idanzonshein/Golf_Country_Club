FactoryBot.define do
  factory :hole do
    course
    hole_number { "1" }
    distance { "250" }
    par_score { "4" }
    water_hazard { "false" }
  end
end
