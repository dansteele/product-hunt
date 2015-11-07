FactoryGirl.define do
  factory :motion do
    title { Faker::Company.catch_phrase }
  end
end