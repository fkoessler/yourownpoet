# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

intro_verse_list = [
  [ "IntroVerse","{About [RNAME]#'Bout [RNAME]#'Bout [RNAME]} [SEN_SP] want you to hear","{In the [LOC]#In [LOC]#In [LOC]} [REC_SP] lives all the year","{[SEN_POP] [REL]#[REL]#[REL]} that is [REC_SP]","That's just how [REC_SP] be","Now listen and give [SEN_OP] your ear" ],
  [ "IntroVerse","A [REC_GUY] named [RNAME] there once was","For [REC_OP] [SEN_SP] am writing some buzz","Yes, in [LOC] [REC_SP] lives","[REC_PRE] a [REL] that gives","Let me tell you of all that [REC_SP] does" ],
  [ "IntroVerse","[SEN_SP] know of a [REL], yes [SEN_SP] do","[REC_POP] name is {just [RNAME], it is#[RNAME], it is#[RNAME], it's} true","In [LOC] lives [REC_SP]","And a message from me","Is something for me to do new" ],
  [ "IntroVerse","Without any further ado","[SEN_COND] like to explain who is who","In [LOC] [REC_SP] dwells","With whistles and bells","[REC_PRE] [RNAME], [SEN_POP] [REL], it's true" ],
  [ "IntroVerse","[SEN_POP] [REL], [REC_POP] place is secure","[SEN_POP] thoughts of [REC_OP], they do endure","[LOC]'s [REC_POP] homestead","It's where [REC_SP] was led","And [RNAME]'s [REC_POP] name, that's for sure" ],
  [ "IntroVerse","In [LOC] [SEN_POP] [REL] is found","And [RNAME]'s [REC_POP] name [SEN_FUT] be bound","[SEN_SP] know [REC_OP], I do","[SEN_FUT] bet my right shoe","Allow [SEN_OP] to further expound" ],
  [ "IntroVerse","Of [RNAME] [SEN_SP] have to confess","In [LOC] [SEN_SP] makes [REC_POP] address","A {great [REL]#[REL]#[REL]} to me","Read on and you'll see","The qualities that [SEN_SP] does possess" ],
  [ "IntroVerse","Now [RNAME] is nobody's fool","In [LOC] [REC_SP] lives as a rule","[REC_PRE] a [REL] to me","[SEN_POP] [REL], you see","And here's why [SEN_SP] think [SEN_SP] is cool" ],
  [ "IntroVerse","So [RNAME]'s a [REC_GUY] on the go","In [LOC] [REC_PRE] seen high and low","[SEN_COND] like to define","This [REL] of mine","And here's what [SEN_SP] want you to know" ],
  [ "IntroVerse","This poem to {}that one [RNAME]#one [RNAME]#[RNAME]} is sent","These word to [REC_OP] [SEN_SP] will present","Since in [LOC] [SEN_SP] resides","That's where [SEN_SP] decides","To [SEN_POP] {true [REL]#[REL]#[REL]} these words are meant" ],
  [ "IntroVerse","[SEN_SP] thought of you, {my [REL]#[REL]#[REL]} today","To send heartfelt greetings your way","To [LOC] this goes","[SEN_SP] hope that it shows","[SEN_SP] think of you, [RNAME], if [SEN_SP] may" ],
  [ "IntroVerse","To {dear [RNAME]#[RNAME]#[RNAME]} [SEN_POP] {fine [REL]#[REL]#[REL]}, please hear","You live now in [LOC] all year","So [SEN_SP] send this to you","And [SEN_SP] hope it will do","Much good with its wishes of cheer" ],
  [ "IntroVerse","To [RNAME], [SEN_POP] [REL], here's a shout","[SEN_SP] hope you can hear [SEN_OP] call out","Though in [LOC] you be","You're not far from me","And that's without question or doubt" ],
  [ "IntroVerse","To [RNAME], [SEN_POP] [REL], it's a pleasure","To send you a card you can treasure","To [LOC] it goes","With a poem and not prose","And now you can read in your leisure" ],
  [ "IntroVerse","To [RNAME] in [LOC], how goes your day?","This little card [SEN_PAST] sent on its way","For [SEN_POP] [REL], a verse","Not bad, could be worse","As long as it won't go astray" ]
]
intro_verse_list.each do |type, line_one, line_two, line_three, line_four, line_five|
  IntroVerse.create( type: type, line_one: line_one, line_two: line_two, line_three: line_three, line_four: line_four, line_five: line_five)
end

trait_category_list = [
  [ "TraitCategory","athletic  muscular  strong" ],
  [ "TraitCategory","considerate  attentive  concerned  caring  nice" ],
  [ "TraitCategory","courageous  brave  lionhearted" ],
  [ "TraitCategory","extroverted  friendly  gregarious  sociable" ],
  [ "TraitCategory","gossip  bad-mouth  rumor" ]
]
trait_category_list.each do |type, name|
  TraitCategory.create( type: type, name: name)
end

trait_verse_list = [
  [ "TraitVerse","No matter the sport, [REC_SP] can't stop","[REC_SP] destroys [REC_POP] opponent, and pop!","[REC_SP] moves on so yarely","[REC_PRE] missing so rarely","[REC_POP] athleticism is at the top",1 ],
  [ "TraitVerse","A real athletic one, yes [REC_SP] is","Makes it look like it is [REC_POP] biz","The athletes like [REC_POP] kind","They are so hard to find","At keeping in shape [REC_PRE] a wiz!",1 ],
  [ "TraitVerse","A person athletic as [REC_SP]","Is not one you often will see","If it is athletic","Then [REC_PRE] sympathetic","And often in action [REC_FUT] be",1 ],
  [ "TraitVerse","The consideration [REC_SP] shows is the best","It's a quality with which [REC_SP] is blessed","[SEN_SP] truly admire","The way [REC_SP] inspires","With consideration that stands every test",2 ],
  [ "TraitVerse","Considerate as [REC_SP] can get","If they asked, [SEN_SP] would say [REC_PRE] it","[REC_SP] considers our feelings","In all of [REC_POP] dealings","It sure helps society fit",2 ],
  [ "TraitVerse","Of all the people [SEN_SP] know, it's true","The most considerate of all is you","So thoughtful you are","So great, by so far","Consideration is in all that you do",2 ],
  [ "TraitVerse","Courageous and brave, [REC_PRE] the best!","Lion-hearted and bold, full of zest","[REC_PRE] gallant and heroic","Stalwart and stoic","To know [REC_OP], one truly is blessed",3 ],
  [ "TraitVerse","It's an attribute of yours that [SEN_SP] crave","In fact, [SEN_FUT] express one big rave","Your courage, to me","Is colossal, you see","[SEN_PRE] impressed that you're always so brave",3 ],
  [ "TraitVerse","[REC_PRE] valorous since [REC_POP] life started","From courage [REC_PRE] never been parted","In any close shave","[SEN_SP] know [REC_FUT] be brave","[REC_PRE] admirably lion-hearted",3 ],
  [ "TraitVerse","[REC_PRE] quite extroverted, it shows","Extroversion's the route that [REC_SP] goes","[REC_SP] likes to project","Himself out to connect","With the friends and the colleagues [REC_SP] knows",4 ],
  [ "TraitVerse","So lively and sociable [REC_SP]","The life of the party [REC_SP] be","Outgoing and bold","For all to behold","The focus of all scrutiny","true","0",4 ],
  [ "TraitVerse","This [REC_GUY]'s extroverted, [REC_FUT] seem","Like outgoing is [REC_POP] life's dream","[REC_SP] likes meeting friends","And the talk never ends","For [REC_OP] talking's right on the beam",4 ],
  [ "TraitVerse","[REC_PRE] a gossip in most every way","Listen close to [SEN_POP] words, [REC_FUT] say","True, it's [REC_POP] greatest wish","To pass on the dish","[REC_PRE] a gossip for all of the day",5],
  [ "TraitVerse","[REC_SP] likes to gossip, some have found","By idle chatter [REC_SP] is bound","Some do say that stinks","But clearly [REC_SP] thinks","That gossip makes the world go 'round",5 ],
  [ "TraitVerse","Sometimes [REC_SP] gossips, yes [REC_SP] does","Calls it sharing the latest buzz","Regardless the time","Right in [REC_SP] will chime","Not sure why, [SEN_SP] guess just because",5 ]
]
trait_verse_list.each do |type, line_one, line_two, line_three, line_four, line_five, category_id|
  TraitVerse.create( type: type, line_one: line_one, line_two: line_two, line_three: line_three, line_four: line_four, line_five: line_five, category_id: category_id)
end

message_category_list = [
  [ "MessageCategory","Thinking of you", "Thinking of you, [RNAME]..." ],
  [ "MessageCategory","Waiting until I see you again","Waiting... waiting to see you again,[RNAME]" ],
  [ "MessageCategory","Wedding invitation","Please come to our wedding celebration, [RNAME]!" ],
  [ "MessageCategory","You are my star","[RNAME], you are my star!" ],
  [ "MessageCategory","You make me feel safe","[RNAME], you make me feel safe" ]
]
message_category_list.each do |type, name, title|
  MessageCategory.create( type: type, name: name, poem_title: title)
end

message_verse_list = [
  [ "MessageVerse","Quite often you are on [SEN_POP] mind", "Look inside and it's you that [SEN_SP] find","[SEN_SP] want you to know","You make [SEN_POP] mind glow","And thinking of you [SEN_PRE] inclined",6 ],
  [ "MessageVerse","[SEN_PRE] sending this literal clue", "To tell you [SEN_PRE] thinking of you","[SEN_SP] picture you lots","You're there in [SEN_POP] thoughts","Through all of the things that you do",6 ],
  [ "MessageVerse","Right now [SEN_PRE] thinking of you", "Just a moment, that's what [SEN_FUT] do","[SEN_SP] so often find","It's you on [SEN_POP] mind","Then [SEN_FUT] stop, but only for a few",6 ],
  [ "MessageVerse","The clock seems to tick so slowly", "The tock makes time ever lonely","[SEN_SP] mark off the days","And count all the ways","Until again you are beside me","true","0",7 ],
  [ "MessageVerse","When you left [SEN_OP] [SEN_SP] had to begin it", "Counting each hour and each minute","And [SEN_SP] won't stop, [SEN_POP] dear","'Til you're standing right here","[SEN_POP] hand in your hand right in it",7 ],
  [ "MessageVerse","On the grand scale from one to ten", "To you, sincerest wish [SEN_SP] extend","You're a [REL] so true","In all that you do","And [SEN_SP] can't wait to see you again","true","0",7 ],
  [ "MessageVerse","Here's news that we hope makes you smile", "We'll soon walk right down that sweet aisle!","It's a marriage invite","Please join us, alright?","For [SEN_POP] wedding we'll do in real style!",8 ],
  [ "MessageVerse","Won't you join us the day we are wed?", "So you'll hear all the words that are said","You will hear the '[SEN_SP] do'","And the '[SEN_SP] love you, too'","And be after, deliciously fed",8 ],
  [ "MessageVerse","The rumors you've heard are so true", "Two people are saying '[SEN_SP] do'","We know that you care","So we sure want you there","Here's our invitation to you","true","0",8 ],
  [ "MessageVerse","[SEN_SP] star, [SEN_SP] one true guiding light", "So heavenly, noble and bright","You light up [SEN_POP] days","In so many ways","And fill [SEN_POP] whole world with delight",9 ],
  [ "MessageVerse","[SEN_COND] like you to know you're [SEN_POP] star", "In all that you do and you are","You're simply A-one","You won't be outdone","You're the best jelly bean in the jar",9 ],
  [ "MessageVerse","You're Alpha Centauri to me", "[SEN_POP] Betelgeuse you'll always be","Shining so bright","Every day into night","You're truly [SEN_POP] star, do you see?",9 ],
  [ "MessageVerse","[SEN_SP] feel safe when you are around", "It's just something that [SEN_SP] have found","It's a safety [SEN_SP] feel","Near you, a big deal","And [SEN_SP] like to feel safely and sound",10 ],
  [ "MessageVerse","Staying alone, or in the night", "When [SEN_PRE] nervous or feeling a fright","You are there in [SEN_POP] thoughts","When safety is sought","Making things once again for [SEN_OP] right",10 ],
  [ "MessageVerse","You make [SEN_OP] feel safe and secure", "When comfort is hard to procure","In a world full of fright","[SEN_SP] feel quite all right","Serenity, you make for [SEN_OP] more",10 ]
]
message_verse_list.each do |type, line_one, line_two, line_three, line_four, line_five, category_id|
  MessageVerse.create( type: type, line_one: line_one, line_two: line_two, line_three: line_three, line_four: line_four, line_five: line_five, category_id: category_id)
end

Relationship.create(name: 'aunt', male_mirror: 'nephew', female_mirror: 'niece', category: '1', sex: '2')
Relationship.create(name: 'bro', male_mirror: 'bro', female_mirror: 'sis', category: '1', sex: '1')
Relationship.create(name: 'brother', male_mirror: 'brother', female_mirror: 'sister', category: '1', sex: '1')
Relationship.create(name: 'brother-in-law', male_mirror: 'brother-in-law', female_mirror: 'sister-in-law', category: '1', sex: '1')
Relationship.create(name: 'cousin', male_mirror: 'cousin', female_mirror: 'cousin', category: '1', sex: '0')
Relationship.create(name: 'dad', male_mirror: 'son', female_mirror: 'daughter', category: '1', sex: '1')
Relationship.create(name: 'daddy', male_mirror: 'son', female_mirror: 'daughter', category: '1', sex: '1')
Relationship.create(name: 'daughter', male_mirror: 'father', female_mirror: 'mother', category: '1', sex: '2')
Relationship.create(name: 'daughter-in-law', male_mirror: 'father-in-law', female_mirror: 'mother-in-law', category: '1', sex: '2')
Relationship.create(name: 'ex', male_mirror: 'ex', female_mirror: 'ex', category: '1', sex: '0')
Relationship.create(name: 'ex-husband', male_mirror: 'ex-wife', female_mirror: 'ex-wife', category: '1', sex: '1')
Relationship.create(name: 'ex-wife', male_mirror: 'ex-husband', female_mirror: 'ex-husband', category: '1', sex: '2')
Relationship.create(name: 'father', male_mirror: 'son', female_mirror: 'daughter', category: '1', sex: '1')
Relationship.create(name: 'father-in-law', male_mirror: 'son-in-law', female_mirror: 'daughter-in-law', category: '1', sex: '1')
Relationship.create(name: 'granddaughter', male_mirror: 'grandfather', female_mirror: 'grandmother', category: '1', sex: '2')
Relationship.create(name: 'grandfather', male_mirror: 'grandson', female_mirror: 'granddaugther', category: '1', sex: '1')
Relationship.create(name: 'grandma', male_mirror: 'grandson', female_mirror: 'granddaughter', category: '1', sex: '2')
Relationship.create(name: 'grandmother', male_mirror: 'grandson', female_mirror: 'granddaughter', category: '1', sex: '2')
Relationship.create(name: 'grandpa', male_mirror: 'granddon', female_mirror: 'granddaughter', category: '1', sex: '1')
Relationship.create(name: 'grandson', male_mirror: 'grandfather', female_mirror: 'grandmother', category: '1', sex: '1')
Relationship.create(name: 'great aunt', male_mirror: 'great nephew', female_mirror: 'great niece', category: '1', sex: '2')
Relationship.create(name: 'great uncle', male_mirror: 'great nephew', female_mirror: 'great niece', category: '1', sex: '1')
Relationship.create(name: 'great-granddaughter', male_mirror: 'great-grandfather', female_mirror: 'great-grandmother', category: '1', sex: '2')
Relationship.create(name: 'great-grandfather', male_mirror: 'great-grandson', female_mirror: 'great-granddaughter', category: '1', sex: '1')
Relationship.create(name: 'great-grandmother', male_mirror: 'great-grandson', female_mirror: 'great-granddaughter', category: '1', sex: '2')
Relationship.create(name: 'great-grandson', male_mirror: 'great-grandfather', female_mirror: 'great-grandmother', category: '1', sex: '1')
Relationship.create(name: 'husband', male_mirror: 'wife', female_mirror: 'wife', category: '1', sex: '1')
Relationship.create(name: 'ma', male_mirror: 'son', female_mirror: 'daughter', category: '1', sex: '2')
Relationship.create(name: 'mama', male_mirror: 'son', female_mirror: 'daughter', category: '1', sex: '2')
Relationship.create(name: 'mom', male_mirror: 'son', female_mirror: 'daughter', category: '1', sex: '2')
Relationship.create(name: 'mother', male_mirror: 'son', female_mirror: 'daughter', category: '1', sex: '2')
Relationship.create(name: 'mother-in-law', male_mirror: 'son-in-law', female_mirror: 'daughter-in-law', category: '1', sex: '2')
Relationship.create(name: 'nephew', male_mirror: 'uncle', female_mirror: 'aunt', category: '1', sex: '1')
Relationship.create(name: 'niece', male_mirror: 'uncle', female_mirror: 'aunt', category: '1', sex: '2')
Relationship.create(name: 'papa', male_mirror: 'son', female_mirror: 'daughter', category: '1', sex: '1')
Relationship.create(name: 'pop', male_mirror: 'son', female_mirror: 'daughter', category: '1', sex: '1')
Relationship.create(name: 'relative', male_mirror: 'relative', female_mirror: 'relative', category: '1', sex: '0')
Relationship.create(name: 'sis', male_mirror: 'bro', female_mirror: 'sis', category: '1', sex: '2')
Relationship.create(name: 'sister', male_mirror: 'brother', female_mirror: 'sister', category: '1', sex: '2')
Relationship.create(name: 'sister-in-law', male_mirror: 'brother-in-law', female_mirror: 'sister-in-law', category: '1', sex: '2')
Relationship.create(name: 'son', male_mirror: 'father', female_mirror: 'mother', category: '1', sex: '1')
Relationship.create(name: 'son-in-law', male_mirror: 'father-in-law', female_mirror: 'mother-in-law', category: '1', sex: '1')
Relationship.create(name: 'spouse', male_mirror: 'spouse', female_mirror: 'spouse', category: '1', sex: '0')
Relationship.create(name: 'stepdad', male_mirror: 'stepson', female_mirror: 'stepdaughter', category: '1', sex: '1')
Relationship.create(name: 'stepdaughter', male_mirror: 'stepdad', female_mirror: 'stepmother', category: '1', sex: '2')
Relationship.create(name: 'stepfather', male_mirror: 'stepson', female_mirror: 'stepdaughter', category: '1', sex: '1')
Relationship.create(name: 'stepmom', male_mirror: 'stepson', female_mirror: 'stepdaughter', category: '1', sex: '2')
Relationship.create(name: 'stepmother', male_mirror: 'stepson', female_mirror: 'stepdaughter', category: '1', sex: '2')
Relationship.create(name: 'stepson', male_mirror: 'stepdad', female_mirror: 'stepmother', category: '1', sex: '1')
Relationship.create(name: 'twin', male_mirror: 'twin brother', female_mirror: 'twin sister', category: '1', sex: '0')
Relationship.create(name: 'uncle', male_mirror: 'nephew', female_mirror: 'niece', category: '1', sex: '1')
Relationship.create(name: 'wife', male_mirror: 'husband', female_mirror: 'husband', category: '1', sex: '2')
Relationship.create(name: 'acquaintance', male_mirror: '', female_mirror: '', category: '0', sex: '0')
Relationship.create(name: 'assistant', male_mirror: 'boss', female_mirror: 'boss', category: '0', sex: '0')
Relationship.create(name: 'boss', male_mirror: 'report', female_mirror: 'report', category: '0', sex: '0')
Relationship.create(name: 'bro', male_mirror: '', female_mirror: '', category: '0', sex: '1')
Relationship.create(name: 'buddy', male_mirror: 'buddy', female_mirror: 'buddy', category: '0', sex: '0')
Relationship.create(name: 'client', male_mirror: '', female_mirror: '', category: '0', sex: '0')
Relationship.create(name: 'coach', male_mirror: 'coachee', female_mirror: 'coachee', category: '0', sex: '0')
Relationship.create(name: 'colleague', male_mirror: 'colleague', female_mirror: 'colleague', category: '0', sex: '0')
Relationship.create(name: 'comrade', male_mirror: 'comrade', female_mirror: 'comrade', category: '0', sex: '0')
Relationship.create(name: 'confidant', male_mirror: '', female_mirror: '', category: '0', sex: '0')
Relationship.create(name: 'customer', male_mirror: '', female_mirror: '', category: '0', sex: '0')
Relationship.create(name: 'employee', male_mirror: '', female_mirror: '', category: '0', sex: '0')
Relationship.create(name: 'friend', male_mirror: 'friend', female_mirror: 'friend', category: '0', sex: '0')
Relationship.create(name: 'manager', male_mirror: 'report', female_mirror: 'report', category: '0', sex: '0')
Relationship.create(name: 'mate', male_mirror: '', female_mirror: '', category: '0', sex: '0')
Relationship.create(name: 'mentor', male_mirror: 'student', female_mirror: 'student', category: '0', sex: '0')
Relationship.create(name: 'neighbor', male_mirror: 'neighbor', female_mirror: 'neighbor', category: '0', sex: '0')
Relationship.create(name: 'pal', male_mirror: '', female_mirror: '', category: '0', sex: '0')
Relationship.create(name: 'partner', male_mirror: 'partner', female_mirror: 'partner', category: '0', sex: '0')
Relationship.create(name: 'professor', male_mirror: 'student', female_mirror: 'student', category: '0', sex: '0')
Relationship.create(name: 'teacher', male_mirror: 'student', female_mirror: 'student', category: '0', sex: '0')
Relationship.create(name: 'angel', male_mirror: 'NULL', female_mirror: 'NULL', category: '2', sex: '2')
Relationship.create(name: 'baby', male_mirror: '', female_mirror: '', category: '2', sex: '0')
Relationship.create(name: 'beloved', male_mirror: '', female_mirror: '', category: '2', sex: '0')
Relationship.create(name: 'boyfriend', male_mirror: 'boyfriend', female_mirror: 'girlfriend', category: '2', sex: '1')
Relationship.create(name: 'darling', male_mirror: '', female_mirror: '', category: '2', sex: '0')
Relationship.create(name: 'dear', male_mirror: '', female_mirror: '', category: '2', sex: '0')
Relationship.create(name: 'dearest', male_mirror: '', female_mirror: '', category: '2', sex: '0')
Relationship.create(name: 'fiance', male_mirror: 'fiancee', female_mirror: 'fiancee', category: '2', sex: '1')
Relationship.create(name: 'fiancee', male_mirror: 'fiance', female_mirror: 'fiance', category: '2', sex: '2')
Relationship.create(name: 'gentleman friend', male_mirror: 'lady friend', female_mirror: 'lady friend', category: '2', sex: '1')
Relationship.create(name: 'girlfriend', male_mirror: 'boyfriend', female_mirror: 'girlfriend', category: '2', sex: '2')
Relationship.create(name: 'heart\'s desire', male_mirror: '', female_mirror: '', category: '2', sex: '0')
Relationship.create(name: 'heartbeat', male_mirror: '', female_mirror: '', category: '2', sex: '0')
Relationship.create(name: 'honey', male_mirror: '', female_mirror: '', category: '2', sex: '0')
Relationship.create(name: 'life partner', male_mirror: 'life partner', female_mirror: 'life partner', category: '2', sex: '0')
Relationship.create(name: 'light of my life', male_mirror: '', female_mirror: '', category: '2', sex: '0')
Relationship.create(name: 'love', male_mirror: '', female_mirror: '', category: '2', sex: '0')
Relationship.create(name: 'loved one', male_mirror: '', female_mirror: '', category: '2', sex: '0')
Relationship.create(name: 'lover', male_mirror: 'lover', female_mirror: 'lover', category: '2', sex: '0')
Relationship.create(name: 'mistress', male_mirror: 'NULL', female_mirror: 'NULL', category: '2', sex: '2')
Relationship.create(name: 'number one', male_mirror: '', female_mirror: '', category: '2', sex: '0')
Relationship.create(name: 'one and only', male_mirror: '', female_mirror: '', category: '2', sex: '0')
Relationship.create(name: 'partner', male_mirror: 'partner', female_mirror: 'partner', category: '2', sex: '0')
Relationship.create(name: 'pet', male_mirror: '', female_mirror: '', category: '2', sex: '0')
Relationship.create(name: 'precious', male_mirror: '', female_mirror: '', category: '2', sex: '0')
Relationship.create(name: 'prince', male_mirror: 'princess', female_mirror: 'princess', category: '2', sex: '1')
Relationship.create(name: 'princess', male_mirror: 'prince', female_mirror: 'prince', category: '2', sex: '2')
Relationship.create(name: 'soul mate', male_mirror: 'soul mate', female_mirror: 'soul mate', category: '2', sex: '0')
Relationship.create(name: 'sugar', male_mirror: '', female_mirror: '', category: '2', sex: '0')
Relationship.create(name: 'sugar daddy', male_mirror: 'NULL', female_mirror: 'NULL', category: '2', sex: '1')
Relationship.create(name: 'suitor', male_mirror: 'NULL', female_mirror: 'NULL', category: '2', sex: '1')
Relationship.create(name: 'sweetheart', male_mirror: 'sweetheart', female_mirror: 'sweetheart', category: '2', sex: '0')
Relationship.create(name: 'sweetie', male_mirror: '', female_mirror: '', category: '2', sex: '0')
Relationship.create(name: 'true love', male_mirror: '', female_mirror: '', category: '2', sex: '0')
Relationship.create(name: 'best friend', male_mirror: 'NULL', female_mirror: 'NULL', category: '0', sex: '0')
Relationship.create(name: 'lady friend', male_mirror: 'gentleman friend', female_mirror: 'NULL', category: '2', sex: '2')
Relationship.create(name: 'classmate', male_mirror: 'classmate', female_mirror: 'classmate', category: '0', sex: '0')
Relationship.create(name: 'roommate', male_mirror: 'roommate', female_mirror: 'roommate', category: '0', sex: '0')
Relationship.create(name: 'housemate', male_mirror: 'housemate', female_mirror: 'housemate', category: '0', sex: '0')
Relationship.create(name: 'Good friend', male_mirror: 'Good friend', female_mirror: 'Good friend', category: '0', sex: '0')