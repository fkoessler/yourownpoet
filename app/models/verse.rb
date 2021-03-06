# Generic class to represent a verse from the database
# === Attributes
# string: line_one, line_two, line_three, line_four, line_five
# boolean: active
# integer: sex
class Verse < ActiveRecord::Base
  validates :line_one, :line_two, :line_three, :line_four, :line_five, presence: true
  validates_inclusion_of :sex, in: 0..2

  # The Verse::SEX constant holds the integer/string conversion for the sex field:
  #
  # undefined = 0, male = 1, female = 2
  SEX = { undefined: 0, male: 1, female: 2 }

  # Everytime we call as_json on a Verse to get a hash representing the Verse,
  # nil values will be removed from that hash
  def as_json(options={})
    super(options).reject { |k, v| v.nil? }
  end
end