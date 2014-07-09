# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :poem do
    skip_create

    title "Poem title"
    intro_verse { create(:intro_verse) }
    trait_verse { create(:trait_verse) }
    message_verse { create(:message_verse) }
    #initialize_with { new(receiver_name: "Arthur", location: "Paris", relationship: "Brother", trait_category: "adventurous venturous", message_category: "Happy Birthday") }
  end

end