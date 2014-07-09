require 'rails_helper'

RSpec.describe VerseSelector, :type => :model do

  let(:raw_poem) { VerseSelector.get_raw_poem() }
  let(:title) { raw_poem[:title] }
  let(:intro_verse) { raw_poem[:intro_verse] }
  let(:trait_verse) { raw_poem[:trait_verse] }
  let(:message_verse) { raw_poem[:message_verse] }

  it { raw_poem.should be_a_kind_of(Hash) }
  it { raw_poem.keys.should =~ [:title, :intro_verse, :trait_verse, :message_verse] }
  it { raw_poem.values.should_not include(nil) }

  it "title should be a string" do
    expect(title).to be_a(String)
  end
  it "intro_verse should be a valid verse" do
    expect(intro_verse).to be_valid(Verse)
  end
  it "trait_verse should be a valid verse" do
    expect(trait_verse).to be_valid(Verse)
  end
  it "message_verse should be a valid verse" do
    expect(message_verse).to be_valid(Verse)
  end

  it "should select a raw IntroVerse" do
    expect(VerseSelector.select_intro_verse()).to be_a_new(IntroVerse)
  end

  it "should select a raw TraitVerse" do
    expect(VerseSelector.select_trait_verse()).to be_a_new(TraitVerse)
  end

  it "should select a raw MessageVerse" do
    expect(VerseSelector.select_message_verse()).to be_a_new(MessageVerse)
  end

end