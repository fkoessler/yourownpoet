# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  factory :relationship do
    name "aunt"
    male_mirror "nephew"
    female_mirror "niece"
  end

  factory :relationship_bro, class: 'Relationship' do
    name "bro"
    male_mirror "bro"
    female_mirror "sis"
    category Relationship::CATEGORY[:family]
    sex Relationship::SEX[:male]
  end

  factory :relationship_brother, class: 'Relationship' do
    name "brother"
    male_mirror "brother"
    female_mirror "sister"
    category Relationship::CATEGORY[:family]
    sex Relationship::SEX[:male]
  end

  factory :relationship_cousin, class: 'Relationship' do
    name "cousin"
    male_mirror "cousin"
    female_mirror "cousin"
    category Relationship::CATEGORY[:family]
    sex Relationship::SEX[:undefined]
  end

  factory :relationship_father, class: 'Relationship' do
    name "father"
    male_mirror "son"
    female_mirror "daughter"
    category Relationship::CATEGORY[:family]
    sex Relationship::SEX[:male]
  end

  factory :relationship_friend, class: 'Relationship' do
    name "friend"
    male_mirror "friend"
    female_mirror "friend"
    category Relationship::CATEGORY[:other]
    sex Relationship::SEX[:undefined]
  end

  factory :relationship_heartbeat, class: 'Relationship' do
    name "heartbeat"
    male_mirror ""
    female_mirror ""
    category Relationship::CATEGORY[:romance]
    sex Relationship::SEX[:undefined]
  end

end
