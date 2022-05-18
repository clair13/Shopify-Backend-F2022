FactoryBot.define do
  factory :item do
    name { Faker::Device.model_name }
    quantity { Faker::Number.number(digits: 2) }
    date { Faker::Date.in_date_period}
    description { Faker::Lorem.sentence(word_count: 3) } 
  end
end