require 'rails_helper'

RSpec.describe "questionnaire/welcome.html.haml", :type => :view do

  before do
    render
  end

  it "displays the receiverName input" do
    expect(rendered).to have_field('receiver_name', :type => 'text')
  end

  it "displays a submit button" do
    expect(rendered).to have_button("Next")
  end

  pending "it should contain submit button to correct url"
end