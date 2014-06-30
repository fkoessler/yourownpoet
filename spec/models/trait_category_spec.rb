require 'rails_helper'

RSpec.describe TraitCategory, :type => :model do

  it "has a valid factory" do
    expect(create(:trait_category)).to be_valid
  end

  it { should have_many(:trait_verses) }
  
end