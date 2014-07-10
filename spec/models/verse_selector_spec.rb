require 'rails_helper'

RSpec.describe VerseSelector, :type => :model do

  context "verses missing in database" do

    it "raises an exception" do
      expect { VerseSelector.select_verses('appreciative grateful thankful', 'Be my girlfriend') }.to raise_exception
    end

  end

  context "verses present in database" do

    before(:each) do
      #seed the test database

      create(:intro_verse_one)
      create(:intro_verse_two)
      create(:intro_verse_three)

      category = create(:trait_category_appreciative)
      create(:trait_verse_one, category: category)
      category = create(:trait_category_artistic)
      create(:trait_verse_two, category: category)
      category = create(:trait_category_courageous)
      create(:trait_verse_three, category: category)
      category = create(:trait_category_fatherly)
      create(:trait_verse_one, category: category)
      category = create(:trait_category_friendly)
      create(:trait_verse_two, category: category)
      category = create(:trait_category_philosophical)
      create(:trait_verse_three, category: category)

      category = create(:message_category_star)
      create(:message_verse_one, category: category)
      category = create(:message_category_congratulations)
      create(:message_verse_one, category: category)
      category = create(:message_category_girlfriend)
      create(:message_verse_one, category: category)
      category = category = create(:message_category_get_well)
      create(:message_verse_one, category: category)
      category = create(:message_category_miss_you)
      create(:message_verse_one, category: category)
      category = create(:message_category_wedding)
      create(:message_verse_one, category: category)
    end

    let(:raw_poem) { VerseSelector.select_verses('appreciative grateful thankful', 'Be my girlfriend') }
    #let(:title) { raw_poem[:title] }
    let(:intro_verse) { raw_poem[:intro_verse] }
    let(:trait_verse) { raw_poem[:trait_verse] }
    let(:message_verse) { raw_poem[:message_verse] }

    it "raw_poem should be a hash" do
      expect(raw_poem).to be_a_kind_of(Hash)
    end
    it "raw_poem hash has intro_verse, trait_verse and message_verse keys" do
      expect(raw_poem.keys).to include(:intro_verse, :trait_verse, :message_verse)
    end
    it "raw_poem doesn't contain nil values" do
      expect(raw_poem.values).not_to include(nil)
    end

    it "intro_verse should be a hash" do
      expect(intro_verse).to be_a_kind_of(Hash)
    end
    it "intro_verse hash has line_one to line_five keys" do
      expect(intro_verse.keys).to include('line_one', 'line_two', 'line_three', 'line_four', 'line_five')
    end
    it "intro_verse doesn't contain nil values" do
      expect(intro_verse.values).not_to include(nil)
    end

    it "trait_verse should be a hash" do
      expect(trait_verse).to be_a_kind_of(Hash)
    end
    it "trait_verse hash has line_one to line_five keys" do
      expect(trait_verse.keys).to include('line_one', 'line_two', 'line_three', 'line_four', 'line_five')
    end
    it "trait_verse doesn't contain nil values" do
      expect(trait_verse.values).not_to include(nil)
    end

    it "message_verse should be a hash" do
      expect(message_verse).to be_a_kind_of(Hash)
    end
    it "message_verse hash has line_one to line_five keys" do
      expect(message_verse.keys).to include('line_one', 'line_two', 'line_three', 'line_four', 'line_five')
    end
    it "message_verse doesn't contain nil values" do
      expect(message_verse.values).not_to include(nil)
    end

    #it "title should be a string" do
    #  expect(title).to be_a(String)
    #end
  end
end