require 'rails_helper'

RSpec.describe "welcome/index.html.haml", :type => :view do

  before(:each) do
    render
  end

  #it "should set page title to 'YourOwnPoet'" do
  #  expect(rendered).to have_title('YourOwnPoet')
  #end
  it "should display header 1 'The Poet'" do
    expect(rendered).to have_selector('h1', 'The Poet')
  end
  it "should have container div for angular ui-view" do
    expect(rendered).to have_selector("div[ui-view='']")
  end

end