require 'rails_helper'

RSpec.describe Poem, :type => :model do
  it "has a valid factory" do
    expect(build(:poem)).to be_a Poem
    # need to implement a valid? method in Poem class to use below test
    #expect(build(:poem)).to be_valid
  end
end