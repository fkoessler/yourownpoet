require 'rails_helper'

RSpec.describe Category, :type => :model do

  it "has a valid factory" do
    expect(create(:category)).to be_valid
  end

  it { should validate_presence_of(:name) }
  #it { should validate_presence_of(:active) }
  #it { should validate_presence_of(:sex) }
  #it { should validate_presence_of(:fill_the_blank) }

  it "sex should default to 0" do
    category = create(:category)
    expect(category.sex).to eq(0)
  end
  it "active should default to true" do
    category = create(:category)
    expect(category.active).to be true
  end
  it "fill_in_blank should default to false" do
    category = create(:category)
    expect(category.fill_the_blank).to be false
  end

  it { should ensure_inclusion_of(:sex).in_range(0..2) }

  #it { should have_many(:message_verses) }
  #it { should have_many(:trait_verses) }

end
