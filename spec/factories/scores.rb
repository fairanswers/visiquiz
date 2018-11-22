FactoryBot.define do
  factory :score do
    user { nil }
    quiz { nil }
    complete { false }
    decisions { "MyString" }
  end
end
