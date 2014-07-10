require 'rails_helper'

RSpec.describe MessageCategory, :type => :model do

  it "has a valid factory" do
    expect(create(:message_category_star)).to be_valid
  end

  it { should validate_presence_of(:poem_title) }

  it { should have_many(:message_verses) }
  
end