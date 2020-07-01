FactoryBot.define do
  factory :users do
    name { "Bob Woods" }
    age { "45" }
    skill_level { "Expert" }
    admin { "false" }
    email { "Bob@gmail.com" }
  end
end
