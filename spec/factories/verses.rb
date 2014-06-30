# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  factory :verse do
    line_one "About Jim I want you to hear"
    line_two "In Maine he lives all the year"
    line_three "His cousin that is he"
    line_four "That's just how he be"
    line_five "Now listen and give me your ear"
  end

  factory :intro_verse, class: 'IntroVerse' do
    line_one "About Jim I want you to hear"
    line_two "In Maine he lives all the year"
    line_three "His cousin that is he"
    line_four "That's just how he be"
    line_five "Now listen and give me your ear"
  end

  factory :trait_verse, class: 'TraitVerse' do
    line_one "About Jim I want you to hear"
    line_two "In Maine he lives all the year"
    line_three "His cousin that is he"
    line_four "That's just how he be"
    line_five "Now listen and give me your ear"
  end

  factory :message_verse, class: 'MessageVerse' do
    line_one "About Jim I want you to hear"
    line_two "In Maine he lives all the year"
    line_three "His cousin that is he"
    line_four "That's just how he be"
    line_five "Now listen and give me your ear"
  end
end
