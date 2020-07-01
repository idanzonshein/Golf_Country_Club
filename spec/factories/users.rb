FactoryBot.define do
  factory :user do
    name { "Bob Woods" }
    age { "45" }
    skill_level { "Expert" }
    admin { "false" }
    email { "Bob@gmail.com" }
    password { "123456" }
  end
end
