require 'rails_helper'

RSpec.describe "questionnaire/location.html.haml", :type => :view do

  before do
    render
  end

  it "displays the location input" do
    expect(rendered).to have_selector("input[type='text'][ng-model='formData.location']")
  end

  it "displays the next button" do
    expect(rendered).to have_selector("a[ui-sref='questionnaire.relationship']")
  end
  
end
