require 'rails_helper'

RSpec.describe MessageCategory, :type => :model do

  it "has a valid factory" do
    expect(create(:message_category_star)).to be_valid
  end

  it { should have_many(:message_verses) }
  
end