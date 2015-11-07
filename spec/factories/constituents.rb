FactoryGirl.define do
  factory :constituents do
    email { Faker::Internet.email }
    password "password"
    password_confirmation "password"
  end
end