# The controller in charge of handling the questionnaire:
#
# It serves the form inputs and saves data in session after receiving post request
class QuestionnaireController < ApplicationController

  layout false
  
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

    @poem = Poem.new(JSON.parse(session[:questionnaire]))
    
  end
  
end