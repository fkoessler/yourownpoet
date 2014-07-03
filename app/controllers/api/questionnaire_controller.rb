class Api::QuestionnaireController < ApplicationController
  
  protect_from_forgery with: :null_session
  respond_to :json

  def relationship
    @relationships = ["Brother", "Mother", "Uncle", "Sister"]
    respond_with @relationships
  end

  def trait
    @traits = ["Brother", "Mother", "Uncle", "Sister"]
    respond_with @traits
  end

  def message
    @messages = ["Brother", "Mother", "Uncle", "Sister"]
    respond_with @messages
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def relationship_params
    params.require(:relationship).permit(:name, :male_mirror, :female_mirror, :type, :line_five, :sex)
  end
  def trait_params
    params.require(:trait).permit(:name, :sex, :fill_the_blank, :active)
  end
  def message_params
    params.require(:message).permit(:name, :poem_title, :sex, :fill_the_blank, :active)
  end
end