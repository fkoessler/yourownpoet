# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  factory :verse do
    line_one "About Jim I want you to hear"
    line_two "In Maine he lives all the year"
    line_three "His cousin that is he"
    line_four "That's just how he be"
    line_five "Now listen and give me your ear"
  end

  factory :intro_verse_one, class: 'IntroVerse' do
    line_one "'Bout Eric~N ~IN want you to know"
    line_two "~SC a employee~R ~IN appreciate so"
    line_three "From Milwaukee~L, you see"
    line_four "And a great ~SG ~SN be"
    line_five "~IL say that wherever ~IN go"
  end

  factory :intro_verse_two, class: 'IntroVerse' do
    line_one "Martha~N since ~IN have known you"
    line_two "A friend~R you have been through and through"
    line_three "To Hartford~L ~IN send this"
    line_four "~IN hope you will tend this"
    line_five "Now ~IP thoughts will quickly ensue"
  end

  factory :intro_verse_three, class: 'IntroVerse' do
    line_one "Without any further ado"
    line_two "I'd~ID like to explain who is who"
    line_three "In Texas~L she~SN dwells"
    line_four "With whistles and bells"
    line_five "She's~SC Nancy~N, my~IP daughter~R, it's true"
  end

  factory :trait_verse_one, class: 'TraitVerse' do
    line_one "It's a fact with awesome appeal"
    line_two "And ~IN know indeed that it's real"
    line_three "~SN sure likes to think"
    line_four "Can go past the brink"
    line_five "Can run a mouse right off its wheel"
  end

  factory :trait_verse_two, class: 'TraitVerse' do
    line_one "~SP charming way is extraordinaire"
    line_two "Without a doubt ~SC so debonair"
    line_three "~SN will charm anyone"
    line_four "And it's always such fun"
    line_five "~SN exhibits ~SP charms with such flair!"
  end

  factory :trait_verse_three, class: 'TraitVerse' do
    line_one "~SC so ridiculously funny"
    line_two "The very best wit for ~IP money"
    line_three "~IN laugh 'til ~IN cry"
    line_four "And that ain't a lie"
    line_five "How did ~SN get so darn punny?"
  end

  factory :message_verse_one, class: 'MessageVerse' do
    line_one "I~IN wanted to make you aware"
    line_two "That a friendship like ours is quite rare"
    line_three "It fills me~IO with pride"
    line_four "To be by your side"
    line_five "And know there's a place for me~IO there"
  end

  factory :message_verse_two, class: 'MessageVerse' do
    line_one "The moment I~IN met you I~IN knew"
    line_two "I'd~ID found my~IP true soul-mate in you"
    line_three "So now hear my~IP plea"
    line_four "Won't you marry me~IO?"
    line_five "And make all my~IN wishes come true!"
  end

  factory :message_verse_three, class: 'MessageVerse' do
    line_one "Without you my~IP heart's like a stone"
    line_two "I~IN miss you and feel so alone"
    line_three "I'll~IL try to stay strong"
    line_four "And hope it's not long"
    line_five "Until we next speak on the phone"
  end
end
