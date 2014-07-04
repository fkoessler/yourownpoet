require 'rails_helper'

RSpec.describe "questionnaire/trait.html.haml", :type => :view do

  before do
    render
  end

  it "displays the trait input" do
    expect(rendered).to have_selector("input[type='text'][ng-model='formData.trait']")
  end

  it "displays the next button" do
    expect(rendered).to have_selector("a[ui-sref='questionnaire.message']")
  end

end
