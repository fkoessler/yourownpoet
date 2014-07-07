# Class to represent a relationship
# === Attributes
# string: name, male_mirror, female_mirror
# integer: category
# integer: sex
class Relationship < ActiveRecord::Base

  validates :name, presence: true
  validates :name, uniqueness: true
  validates_inclusion_of :sex, :category, in: 0..2

  # The Relationship::CATEGORY constant holds the integer/string conversion for the Relationship's type
  #
  # other = 0, family = 1, romance = 2
  CATEGORY = { other: 0, family: 1, romance: 2 }
  # The Relationship::SEX constant holds the integer/string conversion for the sex field:
  #
  # undefined = 0, male = 1, female = 2
  SEX = { undefined: 0, male: 1, female: 2 }

end