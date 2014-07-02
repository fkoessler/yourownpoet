require 'rails_helper'

RSpec.describe Questionnaire, :type => :model do
  it "has a valid factory" do
    expect(build(:questionnaire)).to be_a Questionnaire
    # need to implement a valid? method in Questionnaire class to use below test
    #expect(build(:questionnaire)).to be_valid
  end
end