class IntroVerse < Verse
  has_many :trait_verses, :foreign_key => "category_id"
  has_many :message_verses, :foreign_key => "category_id"
end
