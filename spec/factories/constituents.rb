FactoryGirl.define do
  factory :constituent do
    email { Faker::Internet.email }
    password "password"
    password_confirmation "password"
  end
end