# Class to represent a trait category
# === Attributes
# string: name
# boolean: active
# integer: sex
# boolean: fill_the_blank
# has_many: TraitVerses
class TraitCategory < Category
  has_many :trait_verses, :foreign_key => "category_id"
end