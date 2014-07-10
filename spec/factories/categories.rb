# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  factory :category do
    name "Example Category"
  end

  factory :trait_category_appreciative, class: 'TraitCategory' do
    name "appreciative grateful thankful"
  end
  factory :trait_category_artistic, class: 'TraitCategory' do
    name "artistic creative"
  end
  factory :trait_category_courageous, class: 'TraitCategory' do
    name "courageous brave lionhearted"
  end
  factory :trait_category_fatherly, class: 'TraitCategory' do
    name "fatherly paternal protective"
  end
  factory :trait_category_friendly, class: 'TraitCategory' do
    name "friendly amiable outgoing sociable"
  end
  factory :trait_category_philosophical, class: 'TraitCategory' do
    name "philosophical"
  end

  factory :message_category_star, class: 'MessageCategory' do
    name "You are my star"
  end
  factory :message_category_congratulations, class: 'MessageCategory' do
    name "Congratulations"
  end
  factory :message_category_girlfriend, class: 'MessageCategory' do
    name "Be my girlfriend"
  end
  factory :message_category_get_well, class: 'MessageCategory' do
    name "Get Well"
  end
  factory :message_category_miss_you, class: 'MessageCategory' do
    name "I miss you"
  end
  factory :message_category_wedding, class: 'MessageCategory' do
    name "Wedding invitation"
  end

end