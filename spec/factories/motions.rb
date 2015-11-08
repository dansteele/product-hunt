FactoryGirl.define do
  factory :motion do
    title { Faker::Company.catch_phrase }
    description { Faker::Lorem.paragraph }
  end
end