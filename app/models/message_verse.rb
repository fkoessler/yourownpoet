# Class to represent a message verse
# === Attributes
# string: line_one, line_two, line_three, line_four, line_five
# boolean: active
# integer: sex
# belongs to: category_id
class MessageVerse < Verse
  belongs_to :category
end
