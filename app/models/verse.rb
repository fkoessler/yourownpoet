class Verse < ActiveRecord::Base
  validates :line_one, :line_two, :line_three, :line_four, :line_five, presence: true
end