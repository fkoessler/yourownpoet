require 'rails_helper'

RSpec.describe "verses/show", :type => :view do
  before(:each) do
    @verse = assign(:verse, Verse.create!(
      :line_one => "Line One"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Line One/)
  end
end
