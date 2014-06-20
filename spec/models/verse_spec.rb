require 'rails_helper'

RSpec.describe Verse, :type => :model do

  it "has a valid factory" do
    expect(create(:verse)).to be_valid
  end

  it { should validate_presence_of(:line_one) }
  it { should validate_presence_of(:line_two) }
  it { should validate_presence_of(:line_three) }
  it { should validate_presence_of(:line_four) }
  it { should validate_presence_of(:line_five) }
  it { should validate_presence_of(:sex) }
  it { should validate_presence_of(:active) }

  it "sex should default to 0" do
    verse = create(:verse)
    expect(verse.sex).to eq(0)
  end
  it "active should default to true" do
    verse = create(:verse)
    expect(verse.active).to be_true
  end

  it { should ensure_inclusion_of(:sex).in_range(0..2) }

end