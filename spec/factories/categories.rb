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
    poem_title "~N, you are my star!"
  end
  factory :message_category_congratulations, class: 'MessageCategory' do
    name "Congratulations"
    poem_title "Congratulations, ~N!"
  end
  factory :message_category_girlfriend, class: 'MessageCategory' do
    name "Be my girlfriend"
    poem_title "~N, will you be my girlfriend!?"
  end
  factory :message_category_get_well, class: 'MessageCategory' do
    name "Get Well"
    poem_title "~N, please get well..."
  end
  factory :message_category_miss_you, class: 'MessageCategory' do
    name "I miss you"
    poem_title "Missing you, ~N"
  end
  factory :message_category_wedding, class: 'MessageCategory' do
    name "Wedding invitation"
    poem_title "Please come to our wedding celebration, ~N!"
  end

end