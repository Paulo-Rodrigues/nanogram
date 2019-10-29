FactoryBot.define do
  factory :post do
    active { false }
    description { "MyText" }
    account { nil }
  end
end
