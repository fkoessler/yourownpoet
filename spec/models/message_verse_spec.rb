require 'rails_helper'

RSpec.describe MessageVerse, :type => :model do

  it "has a valid factory" do
    expect(create(:message_verse_one)).to be_valid
  end

  it { should belong_to(:category) }
  
end