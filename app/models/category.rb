class Category < ActiveRecord::Base
  validates :name, presence: true
  validates_inclusion_of :sex, in: 0..2
  #has_many :trait_verses, :foreign_key => "category_id"
  #has_many :message_verses, :foreign_key => "category_id"
  SEX = { undefined: 0, male: 1, female: 2 }
end
