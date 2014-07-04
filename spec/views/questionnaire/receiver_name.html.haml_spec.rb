require 'rails_helper'

RSpec.describe "questionnaire/receiver_name.html.haml", :type => :view do

  before do
    render
  end

  it "displays the receiver_name input" do
    expect(rendered).to have_selector("input[type='text'][ng-model='formData.receiver_name']")
  end

  it "displays the next button" do
    expect(rendered).to have_selector("a[ui-sref='questionnaire.location']")
  end

end
