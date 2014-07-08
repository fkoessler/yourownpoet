class Questionnaire
  
  attr_accessor :receiver_name, :location, :relationship, :trait_category, :message_category

  include ActiveModel::Validations
  validates :receiver_name, :location, :relationship,:trait_category, :message_category, presence: true
  #validates :trait_category_id, :message_category_id, presence: true, numericality: { only_integer: true, greater_than: 0 }

  def initialize(args)
    @receiver_name = args[:receiver_name]
    @location = args[:location]
    @relationship = args[:relationship]
    @trait_category = args[:trait_category]
    @message_category = args[:message_category]
  end


end
