# This class is used to store and validate the answers to the questionnary
class Questionnaire

  attr_accessor :receiver_name, :receiver_sex, :location, :relationship, :trait_category, :message_category

  include ActiveModel::Validations
  include ActiveModel::Serializers::JSON

  validates :receiver_name, :receiver_sex, :location, :relationship,:trait_category, :message_category, presence: true
  validates :receiver_sex, inclusion: { in: ["male", "female"] }

  # We populate our Questionnaire attributes on object instanciation by passing it a hash as argument
  def initialize(args = {})
    @receiver_name = args["receiver_name"].capitalize
    @receiver_sex = args["receiver_sex"]
    @location = args["location"].capitalize
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
      'receiver_sex' => @receiver_sex,
      'location' => @location,
      'relationship' => @relationship,
      'trait_category' => @trait_category,
      'message_category' => @message_category
    }
  end
end
