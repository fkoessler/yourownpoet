# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :poem do
    title "Poem title"
    intro_line "Intro line 1"
    trait_line "Trait line 1"
    message_line "Message line 1"

    initialize_with { new(receiver_name: "Arthur", location: "Paris", relationship: "Brother", trait_category: "adventurous venturous", message_category: "Happy Birthday") }
  end

end