require 'rails_helper'

RSpec.describe Relationship, :type => :model do
  
  it "has a valid factory" do
    expect(create(:relationship)).to be_valid
  end

  it { should validate_presence_of(:name) }

  it "sex should default to 0" do
    relationship = create(:relationship)
    expect(relationship.sex).to eq(0)
  end
  it "category should default to 0" do
    relationship = create(:relationship)
    expect(relationship.category).to eq(0)
  end

  it { should ensure_inclusion_of(:sex).in_range(0..2) }
  it { should ensure_inclusion_of(:category).in_range(0..2) }

  it { should validate_uniqueness_of(:name) }

end
