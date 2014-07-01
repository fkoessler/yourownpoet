require 'rails_helper'

RSpec.describe Questionnaire, :type => :model do
  it "has a valid factory" do
    expect(build(:questionnaire)).to be_a Questionnaire
  end
end