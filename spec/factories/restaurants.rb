FactoryBot.define do
  factory :restaurant do
    name {Faker::Restaurant.name}
    beer {Faker}
  end
end
