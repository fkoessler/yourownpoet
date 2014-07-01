require 'rails_helper'

RSpec.describe Poem, :type => :model do
  it "has a valid factory" do
    expect(create(:poem)).to be_valid
  end
end
