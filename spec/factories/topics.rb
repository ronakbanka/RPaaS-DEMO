# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :topic do
    title "test topic name"
    comments [FactoryGirl.build(:comment)]
  end
end
