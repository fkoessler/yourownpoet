# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  factory :relationship do
    name "aunt"
    male_mirror "nephew"
    female_mirror "niece"
  end

end
