require 'rails_helper'

RSpec.describe IntroVerse, :type => :model do
  it "has a valid factory" do
    expect(create(:intro_verse_one)).to be_valid
  end
end