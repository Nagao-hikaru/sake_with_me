FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.free_email(name: 'hikaru') }
    password { 'hikaru6767' }
    password_confirmation { password }
  end
end
