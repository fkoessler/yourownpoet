require 'rails_helper'

RSpec.describe Questionnaire, :type => :model do
  it "has a valid factory" do
    expect(build(:questionnaire)).to be_a Questionnaire
  end

  let(:new_questionnaire) { Questionnaire.new({"receiver_name" => "nikki", "receiver_sex" => "female", "location" => "souffel", "relationship" => "gal", "trait_category" => "adventurous venturous", "message_category" => "Happy Birthday" }) }
  it "capitalizes receiver_name and location" do
    expect(new_questionnaire.receiver_name).to eq("Nikki")
    expect(new_questionnaire.location).to eq("Souffel")
  end
end