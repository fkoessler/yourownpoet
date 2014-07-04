require 'rails_helper'

RSpec.describe "questionnaire/message.html.haml", :type => :view do

  before do
    render
  end

  it "displays the message input" do
    expect(rendered).to have_selector("input[type='text'][ng-model='formData.message']")
  end

  it "displays the submit button" do
    expect(rendered).to have_selector("button[type='submit']")
  end

end
