class Api::QuestionnaireController < ApplicationController
  
  protect_from_forgery with: :null_session
  respond_to :json

  def relationship
    relationships = Relationship.where("LOWER(name) like ?", "%#{typeahead_params[:search].downcase}%").pluck(:name)
    if relationships.present?
      respond_with relationships
    else
      respond_with relationships, status: :no_content
    end
  end

  def trait
    traits = TraitCategory.where("LOWER(name) like ?", "%#{typeahead_params[:search].downcase}%").pluck(:name)
    if traits.present?
      respond_with traits
    else
      respond_with traits, status: :no_content
    end
  end

  def message
    messages = MessageCategory.where("LOWER(name) like ?", "%#{typeahead_params[:search].downcase}%").pluck(:name)
    #messages = MessageCategory.where("LOWER(name) =~ ?", "%#{typeahead_params[:search]}%").pluck(:name)
    if messages.present?
      respond_with messages
    else
      respond_with messages, status: :no_content
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def typeahead_params
    params.permit(:search)
  end
end