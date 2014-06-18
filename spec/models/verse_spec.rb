require 'rails_helper'

RSpec.describe Verse, :type => :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it "has a valid factory" do
    expect(create(:verse)).to be_valid
  end
  #it "is invalid without a line_one" do
  #  expect(build(:verse)).not_to be_valid
  #end
  it { should validate_presence_of(:line_one) }
end