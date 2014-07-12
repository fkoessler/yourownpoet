# The controller in charge of handling the questionnaire:
#
# It serves the form inputs and saves data in session after receiving post request
class QuestionnaireController < ApplicationController

  layout false
  rescue_from ActiveRecord::RecordNotFound, KeyError, with: :verses_not_found
  before_action :check_session, only: [:poem]
  
  # Returns the questionnaire form html that will serve as container
  # for the different form inputs
  def questionnaire
  end
  
  # Returns the receiver_name form input html
  def receiver_name
  end

  # Returns the location form input html
  def location
  end

  # Returns the relationship form input html
  def relationship
  end

  # Returns the trait form input html
  def trait
  end

  # Returns the message form input html
  def message
  end

  # Builds and returns the poem!
  def poem
    questionnaire = JSON.parse(session[:questionnaire], symbolize_names: true)
    rawVerses = VerseSelector.select_verses(questionnaire[:trait_category], questionnaire[:message_category])
    @poem = PoemCustomizer.customize_poem(rawVerses, questionnaire)
  end

  private

  # Is called when a ActiveRecord::RecordNotFound exception is raised in this controller
  # Logs error and renders an error message page
  def verses_not_found(ex)
    logger.error "Exception raised in questionnaire_controller.rb: Exception #{ex.class}: #{ex.message}"
    render 'questionnaire/verses_not_found'
  end

  # Is called before the poem method to make sure we have the questionnaire available in the session
  # Logs error and renders an error message page
  def check_session
    if !session.key?(:questionnaire)
      logger.error "questionnaire_controller.rb, poem method error: questionnaire not in session"
      render 'questionnaire/verses_not_found'
    end
  end
  
end