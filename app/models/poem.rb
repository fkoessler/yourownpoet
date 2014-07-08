class Poem

  attr_accessor :questionnaire, :title, :intro_line, :trait_line, :message_line

  def initialize(questionnaire)
    @questionnaire = Questionnaire.new(questionnaire)
  end

end