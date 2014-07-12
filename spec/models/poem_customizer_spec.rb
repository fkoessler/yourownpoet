require 'rails_helper'

RSpec.describe PoemCustomizer, :type => :model do

  before(:each) { 
    PoemCustomizer.class_variable_set :@@receiver_name, "Arthur"
    PoemCustomizer.class_variable_set :@@receiver_sex, "male"
    PoemCustomizer.class_variable_set :@@location, "Souffelweyersheim"
    PoemCustomizer.class_variable_set :@@relationship, "dad"
  }
  
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
    it "it replaces 3 choices string based on receiver_name syllables count" do
      expect(PoemCustomizer.replace_choice("there was a time in [RNAME] {choice1#choice2#choice3} in the woods")).to eq("there was a time in [RNAME] choice2 in the woods")
    end
    it "it replaces 3 choices string based on location syllables count" do
      expect(PoemCustomizer.replace_choice("there was a time in [LOC] {choice1#choice2#choice3} in the woods")).to eq("there was a time in [LOC] choice3 in the woods")
    end
    it "it replaces 3 choices string based on relationship syllables count" do
      expect(PoemCustomizer.replace_choice("there was a time in [REL] {choice1#choice2#choice3} in the woods")).to eq("there was a time in [REL] choice1 in the woods")
    end
    it "it replaces many three choices Strings, using choice1" do
      expect(PoemCustomizer.replace_choice("Abcd {haha#hihi#hhoho} [RNAME] {bla#blops#makapu} fdsfs")).to eq("Abcd hihi [RNAME] blops fdsfs")
    end
  end

  describe "replace_codes method" do

    it "it replaces [RNAME] code" do
      expect(PoemCustomizer.replace_codes("Hey [RNAME] you're the best")).to eq("Hey Arthur you're the best")
    end
    it "it replaces [LOC] code" do
      expect(PoemCustomizer.replace_codes("I live in [LOC]")).to eq("I live in Souffelweyersheim")
    end
    it "it replaces [REL] code" do
      expect(PoemCustomizer.replace_codes("He's my [REL] i love him")).to eq("He's my dad i love him")
    end
    it "it replaces [SEN_SP] code" do
      expect(PoemCustomizer.replace_codes("[SEN_SP] love you")).to eq("I love you")
    end
    it "it replaces [SEN_OP] code" do
      expect(PoemCustomizer.replace_codes("Hey, it's [SEN_OP]")).to eq("Hey, it's me")
    end
    it "it replaces [SEN_POP] code" do
      expect(PoemCustomizer.replace_codes("it's [SEN_POP] dog")).to eq("it's my dog")
    end
    it "it replaces [SEN_PEP] code" do
      expect(PoemCustomizer.replace_codes("it's [SEN_PEP]")).to eq("it's mine")
    end
    it "it replaces [SEN_IP] code" do
      expect(PoemCustomizer.replace_codes("this is for [SEN_IP]")).to eq("this is for myself")
    end
    it "it replaces [SEN_FUT] code" do
      expect(PoemCustomizer.replace_codes("[SEN_FUT] do it tomorrow")).to eq("I'll do it tomorrow")
    end
    it "it replaces [SEN_COND] code" do
      expect(PoemCustomizer.replace_codes("[SEN_COND] love to")).to eq("I'd love to")
    end
    it "it replaces [SEN_PRE] code" do
      expect(PoemCustomizer.replace_codes("[SEN_PRE] the best")).to eq("I'm the best")
    end
    it "it replaces [SEN_PAST] code" do
      expect(PoemCustomizer.replace_codes("[SEN_PAST] told you")).to eq("I've told you")
    end
    it "it replaces [REC_SP] code" do
      expect(PoemCustomizer.replace_codes("[REC_SP] farts a lot")).to eq("he farts a lot")
    end
    it "it replaces [REC_OP] code" do
      expect(PoemCustomizer.replace_codes("it's [REC_OP]")).to eq("it's him")
    end
    it "it replaces [REC_POP] code" do
      expect(PoemCustomizer.replace_codes("that's [REC_POP] book")).to eq("that's his book")
    end
    it "it replaces [REC_PEP] code" do
      expect(PoemCustomizer.replace_codes("that's [REC_PEP]")).to eq("that's his")
    end
    it "it replaces [REC_IP] code" do
      expect(PoemCustomizer.replace_codes("he's fooling [REC_IP]")).to eq("he's fooling himself")
    end
    it "it replaces [REC_FUT] code" do
      expect(PoemCustomizer.replace_codes("i hope [REC_FUT] do it")).to eq("i hope he'll do it")
    end
    it "it replaces [REC_COND] code" do
      expect(PoemCustomizer.replace_codes("[REC_COND] love that")).to eq("he'd love that")
    end
    it "it replaces [REC_PRE] code" do
      expect(PoemCustomizer.replace_codes("[REC_PRE] a nice guy")).to eq("he's a nice guy")
    end
    it "it replaces [REC_GUY] code" do
      expect(PoemCustomizer.replace_codes("that's my [REC_GUY]")).to eq("that's my guy")
    end
    it "it replaces [REC_BF] code" do
      expect(PoemCustomizer.replace_codes("that's my [REC_BF]")).to eq("that's my boyfriend")
    end
    it "it replaces [REC_MAN] code" do
      expect(PoemCustomizer.replace_codes("that's my [REC_MAN]")).to eq("that's my man")
    end
    it "it replaces [REC_HOST] code" do
      expect(PoemCustomizer.replace_codes("that's my [REC_HOST]")).to eq("that's my host")
    end
    it "it replaces [REC_BRO] code" do
      expect(PoemCustomizer.replace_codes("that's my [REC_BRO]")).to eq("that's my brother")
    end
  end

end
