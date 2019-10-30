FactoryBot.define do
  factory :account do
    username {Faker::Name.name}
    email {Faker::Internet.email}
    password {'password'}
    password_confirmation {'password'}
  end
end
