require 'rails_helper'

RSpec.describe "questionnaire/questionnaire.html.haml", :type => :view do

  before do
    render
  end

  it "displays navigation buttons" do
    expect(rendered).to have_selector("a[ui-sref='.receiver_name']")
    expect(rendered).to have_selector("a[ui-sref='.location']")
    expect(rendered).to have_selector("a[ui-sref='.relationship']")
    expect(rendered).to have_selector("a[ui-sref='.trait']")
    expect(rendered).to have_selector("a[ui-sref='.message']")
  end

  it "displays the container div for angular views" do
    expect(rendered).to have_selector("div[ui-view='']")
  end

  it "displays the submit button" do
    expect(rendered).to have_selector("button[type='submit']")
  end

  it "includes XSRF token" do
    expect(rendered).to have_selector("input[type='hidden'][name='authenticity_token']")
  end

end