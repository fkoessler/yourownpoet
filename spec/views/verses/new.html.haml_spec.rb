require 'rails_helper'

RSpec.describe "verses/new", :type => :view do
  before(:each) do
    assign(:verse, Verse.new(
      :line_one => "MyString"
    ))
  end

  it "renders new verse form" do
    render

    assert_select "form[action=?][method=?]", verses_path, "post" do

      assert_select "input#verse_line_one[name=?]", "verse[line_one]"
    end
  end
end
