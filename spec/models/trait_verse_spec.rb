require 'rails_helper'

RSpec.describe TraitVerse, :type => :model do

  it "has a valid factory" do
    expect(create(:trait_verse_one)).to be_valid
  end

  it { should belong_to(:category) }

end