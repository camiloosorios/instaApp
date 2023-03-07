FactoryBot.define do
  factory :comment do
    comment { "MyText" }
    post_id { 1 }
    user_id { 1 }
  end
end
