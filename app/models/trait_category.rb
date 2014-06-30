class TraitCategory < Category
  has_many :trait_verses, :foreign_key => "category_id"
end