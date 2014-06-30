# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  factory :category do
    name "Example Category"
  end

  factory :trait_category, class: 'TraitCategory' do
    name "Example Trait Category"
  end

  factory :message_category, class: 'MessageCategory' do
    name "Example Message Category"
  end

end