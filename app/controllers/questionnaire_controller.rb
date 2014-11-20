# The controller in charge of handling the questionnaire:
#
# It serves the form inputs and saves data in session after receiving post request
class QuestionnaireController < ApplicationController

  layout false

  # Returns the questionnaire form html that will serve as container
  # for the different form inputs
  def questionnaire
  end
  
end
