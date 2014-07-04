class Relationship < ActiveRecord::Base

  validates :name, :male_mirror, :female_mirror, presence: true
  validates :name, uniqueness: true
  validates_inclusion_of :sex, :category, in: 0..2
  # constants
  CATEGORY = { other: 0, family: 1, romance: 2 }
  SEX = { undefined: 0, male: 1, female: 2 }

end