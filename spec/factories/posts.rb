FactoryBot.define do
  factory :post do
    active { false }
    description { "MyText" }
    account
    # image

    trait :with_image do
        image { fixture_file_upload(Rails.root.join('spec', 'support', 'assets', 't-rex.png'), 'image/png')  }
     end


  end
end
