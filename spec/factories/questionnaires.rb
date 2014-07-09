# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :questionnaire do
    skip_create

    receiver_name "Arthur"
    location "Paris"
    relationship "Brother"
    trait_category "adventurous venturous"
    message_category "Happy Birthday"
  end

end