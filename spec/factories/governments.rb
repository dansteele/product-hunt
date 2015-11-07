FactoryGirl.define do
  factory :government do
    email { Faker::Internet.email }
    password "password"
    password_confirmation "password"
  end
end