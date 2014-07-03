class Relationship < ActiveRecord::Base
  # constants
  CATEGORY = { other: 0, family: 1, romance: 2 }
  SEX = { undefined: 0, male: 1, female: 2 }
end