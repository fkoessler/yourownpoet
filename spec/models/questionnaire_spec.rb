require 'rails_helper'

RSpec.describe Questionnaire, :type => :model do
  it "has a valid factory" do
    expect(create(:questionnaire)).to be_valid
  end
end