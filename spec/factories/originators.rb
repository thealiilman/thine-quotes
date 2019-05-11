FactoryBot.define do
  factory :originator do
    name { Faker::Movies::HarryPotter.character }
  end
end