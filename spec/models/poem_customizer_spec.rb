require 'rails_helper'

RSpec.describe PoemCustomizer, :type => :model do
  
  describe "count_syllables method'" do
    it "returns 1 for 'dad'" do
      expect(PoemCustomizer.count_syllables("dad")).to eq(1)
    end
    it "returns 2 for 'brother'" do
      expect(PoemCustomizer.count_syllables("brother")).to eq(2)
    end
    it "returns 3 for 'aspirin'" do
      expect(PoemCustomizer.count_syllables("aspirin")).to eq(3)
    end
    it "returns 3 for 'Souffelweyersheim'" do
      expect(PoemCustomizer.count_syllables("Souffelweyersheim")).to eq(3)
    end
  end

  describe "replace_choice method'" do
    it "it replaces one three choices String, using choice1" do
      expect(PoemCustomizer.replace_choice("there was a time {choice1#choice2#choice3} in the woods")).to eq("there was a time choice1 in the woods")
    end
    it "it replaces many three choices Strings, using choice1" do
      expect(PoemCustomizer.replace_choice("Abcd{haha#hihi#hhoho}weshh{bla#blops#makapu}fdsfs")).to eq("Abcdhahaweshhblafdsfs")
    end
  end

  describe "replace_codes method" do
    
  end

end
