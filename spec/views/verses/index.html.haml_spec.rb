require 'rails_helper'

RSpec.describe "verses/index", :type => :view do
  before(:each) do
    assign(:verses, [
      Verse.create!(
        :line_one => "Line One"
      ),
      Verse.create!(
        :line_one => "Line One"
      )
    ])
  end

  it "renders a list of verses" do
    render
    assert_select "tr>td", :text => "Line One".to_s, :count => 2
  end
end
