# Generic class to represent a category
# === Attributes
# string: name
# boolean: active
# integer: sex
# boolean: fill_the_blank

class Category < ActiveRecord::Base
  validates :name, presence: true
  validates_inclusion_of :sex, in: 0..2
  
  # The Category::SEX constant holds the integer/string conversion for the sex field:
  #
  # undefined = 0, male = 1, female = 2
  SEX = { undefined: 0, male: 1, female: 2 }
end
