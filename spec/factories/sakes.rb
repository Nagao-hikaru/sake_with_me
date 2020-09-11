FactoryBot.define do
  factory :sake do
    name { '特別純米酒 山田錦' }
    rice_rate { '70%' }
    sake_degree { -20 }
    type_id { Faker::Number.between(from: 2, to: 11) }
    degree { 15 }
    company { Faker::Company.name }
    rice { '山田錦' }
    association :user
  end
end
