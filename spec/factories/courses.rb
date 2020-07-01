FactoryBot.define do
  factory :course do
    name { "Twin Woods" }
    address { "123 Easy Street" }
    description { "The Tournament Players Club at Sawgrass is a golf course in the southeastern United States, located in Ponte Vedra Beach, Florida, southeast of Jacksonville." }
    price { "100" }
    difficulty { "Expert" }
  end
end
