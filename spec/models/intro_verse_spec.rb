require 'rails_helper'

RSpec.describe IntroVerse, :type => :model do
  it "has a valid factory" do
    expect(create(:intro_verse)).to be_valid
  end
end