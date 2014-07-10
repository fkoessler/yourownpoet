# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

intro_verse_list = [
  [ "IntroVerse", "intro verse 1 line 1", "intro verse 1 line 2", "intro verse 1 line 3", "intro verse 1 line 4", "intro verse 1 line 5" ],
  [ "IntroVerse", "intro verse 2 line 1", "intro verse 2 line 2", "intro verse 2 line 3", "intro verse 2 line 4", "intro verse 2 line 5" ],
  [ "IntroVerse", "intro verse 3 line 1", "intro verse 3 line 2", "intro verse 3 line 3", "intro verse 3 line 4", "intro verse 3 line 5" ]
]
intro_verse_list.each do |type, line_one, line_two, line_three, line_four, line_five|
  IntroVerse.create( type: type, line_one: line_one, line_two: line_two, line_three: line_three, line_four: line_four, line_five: line_five)
end

trait_category_list = [
  [ "TraitCategory", "adventurous venturous" ],
  [ "TraitCategory", "cute adorable" ],
  [ "TraitCategory", "intelligent smart clever brilliant" ]
]
trait_category_list.each do |type, name|
  TraitCategory.create( type: type, name: name)
end

trait_verse_list = [
  [ "TraitVerse", "trait verse 1 line 1", "trait verse 1 line 2", "trait verse 1 line 3", "trait verse 1 line 4", "trait verse 1 line 5", 1 ],
  [ "TraitVerse", "trait verse 2 line 1", "trait verse 2 line 2", "trait verse 2 line 3", "trait verse 2 line 4", "trait verse 2 line 5", 2 ],
  [ "TraitVerse", "trait verse 3 line 1", "trait verse 3 line 2", "trait verse 3 line 3", "trait verse 3 line 4", "trait verse 3 line 5", 3 ]
]
trait_verse_list.each do |type, line_one, line_two, line_three, line_four, line_five, category_id|
  TraitVerse.create( type: type, line_one: line_one, line_two: line_two, line_three: line_three, line_four: line_four, line_five: line_five, category_id: category_id)
end

message_category_list = [
  [ "MessageCategory", "Happy Birthday", "Happy birthday ~N" ],
  [ "MessageCategory", "Thank you", "Thank you ~N" ],
  [ "MessageCategory", "You hurt my feelings", "It hurts, ~N" ]
]
message_category_list.each do |type, name|
  MessageCategory.create( type: type, name: name)
end

message_verse_list = [
  [ "MessageVerse", "message verse 1 line 1", "message verse 1 line 2", "message verse 1 line 3", "message verse 1 line 4", "message verse 1 line 5", 4 ],
  [ "MessageVerse", "message verse 2 line 1", "message verse 2 line 2", "message verse 2 line 3", "message verse 2 line 4", "message verse 2 line 5", 5 ],
  [ "MessageVerse", "message verse 3 line 1", "message verse 3 line 2", "message verse 3 line 3", "message verse 3 line 4", "message verse 3 line 5", 6 ]
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