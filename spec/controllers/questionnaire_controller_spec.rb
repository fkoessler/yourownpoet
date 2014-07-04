require 'rails_helper'

RSpec.describe QuestionnaireController, :type => :controller do

  describe "GET 'questionnaire'" do
    it "returns http success" do
      get 'questionnaire'
      expect(response).to be_success
    end
  end

  describe "GET 'receiver_name'" do
    it "returns http success" do
      get 'receiver_name'
      expect(response).to be_success
    end
  end

  describe "GET 'location'" do
    it "returns http success" do
      get 'location'
      expect(response).to be_success
    end
  end

  describe "GET 'relationship'" do
    it "returns http success" do
      get 'relationship'
      expect(response).to be_success
    end
  end

  describe "GET 'trait'" do
    it "returns http success" do
      get 'trait'
      expect(response).to be_success
    end
  end

  describe "GET 'message'" do
    it "returns http success" do
      get 'message'
      expect(response).to be_success
    end
  end

end
