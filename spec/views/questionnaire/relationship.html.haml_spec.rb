require 'rails_helper'

RSpec.describe "questionnaire/relationship.html.haml", :type => :view do
  
  before do
    render
  end

  it "displays the relationship input" do
    expect(rendered).to have_selector("input[type='text'][ng-model='formData.relationship']")
  end

  it "displays the next button" do
    expect(rendered).to have_selector("a[ui-sref='questionnaire.trait']")
  end

end
