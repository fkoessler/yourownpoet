# This class is used to store and validate the answers to the questionnary
class Questionnaire
  
  attr_accessor :receiver_name, :location, :relationship, :trait_category, :message_category

  include ActiveModel::Validations
  include ActiveModel::Serializers::JSON

  validates :receiver_name, :location, :relationship,:trait_category, :message_category, presence: true
  #validates :trait_category_id, :message_category_id, presence: true, numericality: { only_integer: true, greater_than: 0 }

  # We populate our Questionnaire attributes on object instanciation by passing it a hash as argument
  def initialize(args = {})
    @receiver_name = args["receiver_name"]
    @location = args["location"]
    @relationship = args["relationship"]
    @trait_category = args["trait_category"]
    @message_category = args["message_category"]
  end

  # This function is needed for ActiveModel::Serializers::JSON to work properly
  #
  # We can now call to_json on a Questionnaire object
  def attributes
    {
      'receiver_name' => @receiver_name,
      'location' => @location,
      'relationship' => @relationship,
      'trait_category' => @trait_category,
      'message_category' => @message_category
    }
  end


end
