FactoryBot.define do
  factory :book do
    title { "MyString" }
    author { "MyString" }
    comment { "MyText" }
    purchased { false }
    status { 1 }
    user { nil }
  end
end
