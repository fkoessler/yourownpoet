# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :verse do
    line_one "A beautiful verse I stand"
  end

  factory :intro_verse, class: 'IntroVerse' do

  end
end
