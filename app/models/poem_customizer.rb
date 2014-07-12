# Class with only one public class method used to transform the raw poem
# into a finished poem ready to display, based on answers to the questionnaire
class PoemCustomizer

  # Define class variables that gets set when customize_poem is called from controller
  # so we have a practical way to access questionnaire data within this class
  @@receiver_name = ""
  @@location = ""
  @@relationship = ""

  # Public class method that returns a ready to display poem in a hash
  # ==== Attributes
  #
  # * +raw_verse+ - Hash returned by VerseSelector.select_verses
  # * +receiver_name+ - String
  # * +location+ - String
  # * +relationship+ - String
  #
  # ==== Returns
  #
  # A hash: { title, intro: { line_one, line_two, line_three, line_four, line_five }, trait: { line_one, line_two, line_three, line_four, line_five }, message: { line_one, line_two, line_three, line_four, line_five } }
  def self.customize_poem(raw_verse, questionnaire)
    
    #First we set PoemCustomizer class variables
    @@receiver_name = questionnaire[:receiver_name]
    @@location = questionnaire[:location]
    @@relationship = questionnaire[:relationship]

    #Start customizing the raw poem
    title = customize_line(raw_verse[:title])
    #intro = select_intro_verse
    #trait = select_trait_verse(trait_category_name)
    #message = select_message_verse(message_category_name)
    poem = { title: title }
  end

  private

  # Private class method that gets a raw line as argument
  # and returns a ready to display customized line
  # ==== Attributes
  #
  # * +line+ - String
  def self.customize_line(line)
    line = replace_choice(line)
    line = replace_codes(line)
  end

  # Private class method that gets a raw line as argument
  # chooses the text section to use based on the code's replacement's number of syllables
  # if there's a choice in the line
  # and returns the line (which doesn't contain choice replacement anymore)
  # ==== Attributes
  #
  # * +line+ - String which contains choices to replace: ABC{choice1#choicee#choice3}EFG
  #
  # ==== Returns
  #
  # * +line+ - String where the three choices string part has been replaces:
  # ABCchoice2EFG
  def self.replace_choice(line)
    # Regexp matches everything between curly brackets (lazy matching)
    array_of_three_choices = line.scan(/\{(.+?)\}/).flatten

    # There might be many three choice block in a verse line, thus we use an each loop
    array_of_three_choices.each do |three_choices_string|
      choices = three_choices_string.split('#')
      # Find out if we are choosing based on receiver_name, location or relationship syllables
      # if we have a three choice block without a code to replace (which should not happen)
      # we make the choice based on receiver_name's number of syllables (arbitrary choice)
      if three_choices_string.include? "[LOC]"
        syllables = count_syllables(@@location)
      elsif three_choices_string.include? "[REL]"
        syllables = count_syllables(@@relationship)
      else
        syllables = count_syllables(@@receiver_name)
      end
      # if syllables = 1, we want choices[0]
      # if syllables = 2, we want choices[1]
      # if syllables = 3, we want choices[2]
      # syllables is at max 3 (see count_syllables method)
      string_to_use = choices[syllables-1]
      # Make the substitution in line
      line.sub!('{' + three_choices_string + '}', string_to_use)
    end
    return line
  end

  # Private class method that gets a raw line as argument
  # (3 choices replacements must have been made already)
  # It replaces the codes ([RNAME], [LOC], [SEN_SP], etc)
  # and returns the resulting line
  # ==== Attributes
  #
  # * +line+ - String with codes to replace
  #
  # ==== Returns
  #
  # * +line+ - String where code replacements have been made
  def self.replace_codes(line)

  end

  # Counts the number of syllables in word (approximative..)
  # ==== Attributes
  #
  # * +word+ - String
  #
  # ==== Returns
  #
  # * +syllables_count+ - integer: number of syllables in word
  def self.count_syllables(word)
    word.downcase!
    return 1 if word.length <= 3
    word.sub!(/(?:[^laeiouy]es|ed|[^laeiouy]e)$/, '')
    word.sub!(/^y/, '')
    syllables_count = word.scan(/[aeiouy]{1,2}/).size
    # we want syllables to be at most 3
    # (it will be used as array index in replace_choice)
    syllables_count = 3 if syllables_count >= 3
    return syllables_count
  end
end
