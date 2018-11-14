FactoryBot.define do
  factory :answer do
    text { "MyString" }
    correct { false }
    question { nil }
  end
end
