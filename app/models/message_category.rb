class MessageCategory < Category
  has_many :message_verses, :foreign_key => "category_id"
end