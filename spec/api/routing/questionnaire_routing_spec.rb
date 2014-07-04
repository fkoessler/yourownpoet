require "rails_helper"

RSpec.describe Api::QuestionnaireController, :type => :routing do
  describe "routing" do
    it "routes to #relationship" do
      expect(:get => "/api/questionnaire/relationship").to route_to("api/questionnaire#relationship", :format => "json")
    end
    it "routes to #trait" do
      expect(:get => "/api/questionnaire/trait").to route_to("api/questionnaire#trait", :format => "json")
    end
    it "routes to #message" do
      expect(:get => "/api/questionnaire/message").to route_to("api/questionnaire#message", :format => "json")
    end
  end
end
