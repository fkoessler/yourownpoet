require 'rails_helper'

RSpec.describe "Verses", :type => :request do
  describe "GET /verses" do
    it "works! (now write some real specs)" do
      get verses_path
      expect(response.status).to be(200)
    end
  end
end
