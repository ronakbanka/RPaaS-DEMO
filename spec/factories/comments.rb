# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    name "test user"
    content "test comment at Factory girl"
    posted_at Time.now
  end
end
