# Class to represent a message category
# === Attributes
# string: name
# boolean: active
# integer: sex
# boolean: fill_the_blank
# has_many: MessageVerses

class MessageCategory < Category
  has_many :message_verses, :foreign_key => "category_id"
  validates :poem_title, presence: true
end