# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :questionnaire do
    #skip_create

    receiver_name "Arthur"
    location "Paris"
    relationship_id 1
    trait_category_id 1
    message_category_id 1
  end

end