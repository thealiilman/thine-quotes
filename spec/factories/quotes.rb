FactoryBot.define do
  factory :quote do
    content { Faker::Quotes::Shakespeare.as_you_like_it_quote }
    originator
  end
end
