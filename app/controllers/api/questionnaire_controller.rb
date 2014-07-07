# API controller in charge of the questionnaire:
#
# Responds with json
class Api::QuestionnaireController < ApplicationController
  
  protect_from_forgery with: :null_session
  respond_to :json

  # It responds with all Relationships whose names match the search string parameter
  #
  # Used in conjonction with angular-ui bootstrap typeahead
  def relationship
    if typeahead_params[:search].blank?
      respond_with [], status: :bad_request and return
    else
      relationships = Relationship.where("LOWER(name) like ?", "%#{typeahead_params[:search].downcase}%").pluck(:name)
    end
    if relationships.present?
      respond_with relationships
    else
      respond_with relationships, status: :no_content
    end
  end

  # It responds with all Traits whose name match the search string parameter
  #
  # Used in conjonction with angular-ui bootstrap typeahead
  def trait
    if typeahead_params[:search].blank?
      respond_with [], status: :bad_request and return
    else
      traits = TraitCategory.where("LOWER(name) like ?", "%#{typeahead_params[:search].downcase}%").pluck(:name)
    end
    if traits.present?
      respond_with traits
    else
      respond_with traits, status: :no_content
    end
  end

  # It responds with all Messages whose name match the search string parameter
  #
  # Used in conjonction with angular-ui bootstrap typeahead
  def message
    if typeahead_params[:search].blank?
      respond_with [], status: :bad_request and return
    else
      messages = MessageCategory.where("LOWER(name) like ?", "%#{typeahead_params[:search].downcase}%").pluck(:name)
    end
    if messages.present?
      respond_with messages
    else
      respond_with messages, status: :no_content
    end
  end

  # Validates and saves the questionnaire form fields in session
  #
  # ==== Attributes
  #
  # * +receiver_name+ - String containing the receiver's name
  # * +location+ - String containing the receiver's location
  # * +relationship+ - String containing the relation to the receiver
  # * +trait+ - String containing the Trait's name
  # * +message+ - String containing the Message's name
  def save_form
    zobi = {yo: 'ouech', popo: 'hihi', success: true}
    render json: zobi
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def typeahead_params
    params.permit(:search)
  end

  def questionnaire_form_params
    params.permit(:receiver_name, :location, :relationship, :trait, :message)
  end
end