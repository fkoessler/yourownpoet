require 'rails_helper'

RSpec.describe Poem, :type => :model do
  it "has a valid factory" do
    expect(build(:poem)).to be_a Poem
  end
end