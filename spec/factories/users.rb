# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email Faker::Internet.email
    name Faker::Name.name
    password "secrect"
    password_confirmation "secrect"
  end
end
