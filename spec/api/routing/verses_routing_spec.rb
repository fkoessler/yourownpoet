require "rails_helper"

RSpec.describe Api::VersesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/api/verses").to route_to("api/verses#index", :format => "json")
    end

    it "routes to #new" do
      expect(:get => "/api/verses/new").to route_to("api/verses#new", :format => "json")
    end

    it "routes to #show" do
      verse = build(:verse)
      expect(:get => "/api/verses/1").to route_to("api/verses#show", :id => "1", :format => "json")
    end

    it "routes to #edit" do
      expect(:get => "/api/verses/1/edit").to route_to("api/verses#edit", :id => "1", :format => "json")
    end

    it "routes to #create" do
      expect(:post => "/api/verses").to route_to("api/verses#create", :format => "json")
    end

    it "routes to #update" do
      expect(:put => "/api/verses/1").to route_to("api/verses#update", :id => "1", :format => "json")
    end

    it "routes to #destroy" do
      expect(:delete => "/api/verses/1").to route_to("api/verses#destroy", :id => "1", :format => "json")
    end

  end
end
