FactoryBot.define do
  factory :comment do
    commentable_type {"Post"}
    commentable_id { 1 }
    body { "MyText" }
    account 
  end
end
