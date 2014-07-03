class Api::QuestionnaireController < ApplicationController
  
  protect_from_forgery with: :null_session
  respond_to :json

  def relationship
    relationships = Relationship.where("name like ?", "%#{typeahead_params[:search]}%").pluck(:name)
    respond_with relationships
  end

  def trait
    traits = TraitCategory.where("name like ?", "%#{typeahead_params[:search]}%").pluck(:name)
    respond_with traits
  end

  def message
    messages = MessageCategory.where("name like ?", "%#{typeahead_params[:search]}%").pluck(:name)
    respond_with messages
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def typeahead_params
    params.permit(:search)
  end
end