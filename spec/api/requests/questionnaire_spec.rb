require 'rails_helper'

RSpec.describe "Questionnaire", :type => :request do
  describe "GET /api/questionnaire/relationship" do
    it "response has a 400 bad request status if no search parameter" do
      get api_questionnaire_relationship_path
      expect(response.status).to be(400)
    end
    it "response has a 204 no content status when valid query" do
      get api_questionnaire_relationship_path(search: "father")
      expect(response.status).to be(204)
    end
  end

  describe "GET /api/questionnaire/trait" do
    it "response has a 400 bad request status if no search parameter" do
      get api_questionnaire_trait_path
      expect(response.status).to be(400)
    end
    it "response has a 204 no content status when valid query" do
      get api_questionnaire_trait_path(search: "father")
      expect(response.status).to be(204)
    end
  end

  describe "GET /api/questionnaire/message" do
    it "response has a 400 bad request status if no search parameter" do
      get api_questionnaire_message_path
      expect(response.status).to be(400)
    end
    it "response has a 204 no content status when valid query" do
      get api_questionnaire_message_path(search: "father")
      expect(response.status).to be(204)
    end
  end
end
