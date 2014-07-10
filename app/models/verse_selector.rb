# Class with only one public class method used to select one raw IntroVerse, one raw TraitVerse
# and one raw MessageVerse from the database.
class VerseSelector

  # Public class method that returns a raw intro_verse, trait_verse and message_verse in a hash
  # ==== Attributes
  #
  # * +trait_category_name+ - String
  # * +message_category_name+ - String
  #
  # ==== Returns
  #
  # A hash: { intro: { line_one, line_two, line_three, line_four, line_five }, trait: { line_one, line_two, line_three, line_four, line_five }, message: { line_one, line_two, line_three, line_four, line_five } }
  # Raises a ActiveRecord::RecordNotFound if a verse could not be found
  def self.select_verses(trait_category_name, message_category_name)
    #title = get_poem_title(message_category_name)
    intro = select_intro_verse
    trait = select_trait_verse(trait_category_name)
    message = select_message_verse(message_category_name)
    selection = { intro_verse: intro, trait_verse: trait, message_verse: message }
  end

  private

  # Private class method that randomly selects an intro_verse from the database
  # Returns a hash with: line_one, line_two, line_three, line_four and line_five
  # Raises a ActiveRecord::RecordNotFound if no record found
  def self.select_intro_verse
    offset = rand(IntroVerse.count)
    IntroVerse.select('line_one', 'line_two', 'line_three', 'line_four', 'line_five').offset(offset).first!.as_json
  end

  # Private class method that randomly selects a trait_verse that belongs to the 'trait_category_name' category from the database
  # Returns a hash with: line_one, line_two, line_three, line_four and line_five
  # Raises a ActiveRecord::RecordNotFound if no record found
  def self.select_trait_verse(trait_category_name)
    categoryVerses = TraitVerse.joins(:category).where(categories: { name: trait_category_name })
    offset = rand(categoryVerses.count)
    categoryVerses.select('line_one', 'line_two', 'line_three', 'line_four', 'line_five').offset(offset).first!.as_json
  end

  # Private class method that randomly selects a message_verse that belongs to the 'message_category_name' category from the database
  # Returns a hash with: line_one, line_two, line_three, line_four and line_five
  # Raises a ActiveRecord::RecordNotFound if no record found
  def self.select_message_verse(message_category_name)
    categoryVerses = MessageVerse.joins(:category).where(categories: { name: message_category_name })
    offset = rand(categoryVerses.count)
    categoryVerses.select('line_one', 'line_two', 'line_three', 'line_four', 'line_five').offset(offset).first!.as_json
  end

  #def self.get_poem_title(message_category_name)
  #  MessageCategory.select(:title).where(name: message_category_name)
  #end

end