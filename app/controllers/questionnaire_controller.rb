# The controller in charge of handling the questionnaire:
#
# It serves the form inputs and saves data in session after receiving post request
class QuestionnaireController < ApplicationController

  layout false
  rescue_from ActiveRecord::RecordNotFound, with: :verses_not_found
  
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
    @poem = PoemCustomizer.buildPoem(rawVerse, questionnaire[:receiver_name], questionnaire[:location], questionnaire[:relationship])    
  end

  protected

  # Is called when a ActiveRecord::RecordNotFound exception is raised in this controller
  def verses_not_found
    logger.error "Verses not found (ActiveRecord::RecordNotFound raised), with: #{session[:questionnaire][:trait_category]}, #{session[:questionnaire][:message_category]}"
    render 'questionnaire/verses_not_found'
  end
  
end