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
  
end
