require 'rails_helper'

RSpec.describe "verses/edit", :type => :view do
  before(:each) do
    @verse = assign(:verse, Verse.create!(
      :line_one => "MyString"
    ))
  end

  it "renders the edit verse form" do
    render

    assert_select "form[action=?][method=?]", verse_path(@verse), "post" do

      assert_select "input#verse_line_one[name=?]", "verse[line_one]"
    end
  end
end
