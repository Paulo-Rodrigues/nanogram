FactoryBot.define do
  factory :post do
    active { false }
    description { "MyText" }
    account
    image {Faker::Placeholdit.image}
  end
end
