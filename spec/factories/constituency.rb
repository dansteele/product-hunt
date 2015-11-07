FactoryGirl.define do
  factory :constituency do
    name { Faker::Address.city }
  end
end