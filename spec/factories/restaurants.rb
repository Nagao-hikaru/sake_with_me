FactoryBot.define do
  factory :restaurant do
    name {Faker::Restaurant.name}
    beer {Faker::Beer.name}
    genre_id {Faker::Number.between(from: 2, to: 17)}
    prefecture_id {Faker::Number.between(from: 2, to: 48)}
    address {Faker::Address.full_address}
    association :user
  end
end
