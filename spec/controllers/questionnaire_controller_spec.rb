require 'rails_helper'

RSpec.describe QuestionnaireController, :type => :controller do

  describe "GET 'questionnaire'" do
    it "returns http success" do
      get 'questionnaire'
      expect(response).to be_success
    end
    it 'should render questionnaire/questionnaire.html template' do
      get 'questionnaire'
      expect(response).to render_template(:questionnaire)
    end
  end

  describe "GET 'receiver_name'" do
    it "returns http success" do
      get 'receiver_name'
      expect(response).to be_success
    end
    it 'should render questionnaire/receiver_name.html template' do
      get 'receiver_name'
      expect(response).to render_template(:receiver_name)
    end
  end

  describe "GET 'location'" do
    it "returns http success" do
      get 'location'
      expect(response).to be_success
    end
    it 'should render questionnaire/location.html template' do
      get 'location'
      expect(response).to render_template(:location)
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
    it 'should render questionnaire/trait.html template' do
      get 'trait'
      expect(response).to render_template(:trait)
    end
  end

  describe "GET 'message'" do
    it "returns http success" do
      get 'message'
      expect(response).to be_success
    end
    it 'should render questionnaire/message.html template' do
      get 'message'
      expect(response).to render_template(:message)
    end
  end

  describe "GET 'poem'" do

  end
  
end
