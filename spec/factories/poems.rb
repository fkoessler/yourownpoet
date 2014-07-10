# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :poem do
    skip_create

    title "Poem title"
    intro_verse { create(:intro_verse_one) }
    trait_verse { create(:trait_verse_one) }
    message_verse { create(:message_verse_one) }
    #initialize_with { new(receiver_name: "Arthur", location: "Paris", relationship: "Brother", trait_category: "adventurous venturous", message_category: "Happy Birthday") }
  end

end