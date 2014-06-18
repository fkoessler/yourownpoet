class Verse < ActiveRecord::Base
  validates :line_one, presence: true
end