FactoryBot.define do
  factory :item do
    name { Faker::Hacker.ingverb }
    done  { false }
    todo_id nil
  end
end