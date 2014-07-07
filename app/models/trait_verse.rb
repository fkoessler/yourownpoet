# Class to represent a trait verse
# === Attributes
# string: line_one, line_two, line_three, line_four, line_five
# boolean: active
# integer: sex
# belongs to: category_id
class TraitVerse < Verse
  belongs_to :category
end