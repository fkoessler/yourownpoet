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
  [ "MessageCategory", "Happy Birthday" ],
  [ "MessageCategory", "Thank you" ],
  [ "MessageCategory", "You hurt my feelings" ]
]
message_category_list.each do |type, name|
  MessageCategory.create( type: type, name: name)
end

message_verse_list = [
  [ "MessageVerse", "message_verse_list verse 1 line 1", "message_verse_list verse 1 line 2", "message_verse_list verse 1 line 3", "message_verse_list verse 1 line 4", "message_verse_list verse 1 line 5", 4 ],
  [ "MessageVerse", "message_verse_list verse 2 line 1", "message_verse_list verse 2 line 2", "message_verse_list verse 2 line 3", "message_verse_list verse 2 line 4", "message_verse_list verse 2 line 5", 5 ],
  [ "MessageVerse", "message_verse_list verse 3 line 1", "message_verse_list verse 3 line 2", "message_verse_list verse 3 line 3", "message_verse_list verse 3 line 4", "message_verse_list verse 3 line 5", 6 ]
]
message_verse_list.each do |type, line_one, line_two, line_three, line_four, line_five, category_id|
  MessageVerse.create( type: type, line_one: line_one, line_two: line_two, line_three: line_three, line_four: line_four, line_five: line_five, category_id: category_id)
end