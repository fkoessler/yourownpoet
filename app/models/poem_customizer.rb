# Class with only one public class method used to transform the raw poem
# into a finished poem ready to display, based on answers to the questionnaire
class PoemCustomizer

  # Define class variables that gets set when customize_poem is called from controller
  # so we have a practical way to access questionnaire data within this class
  @@receiver_name = ""
  @@receiver_sex = ""
  @@location = ""
  @@relationship = ""

  # Define our sender pronouns dictionnary
  # will be used in replace_codes, replacements based on single sender or multiple senders
  SENDER_PRONOUNS = {
    SEN_SP: { singular: "I", plural: "we" },
    SEN_OP: { singular: "me", plural: "us" },
    SEN_POP: { singular: "my", plural: "our" },
    SEN_PEP: { singular: "mine", plural: "ours" },
    SEN_IP: { singular: "myself", plural: "ourselves" },
    SEN_FUT: { singular: "I'll", plural: "we'll" },
    SEN_COND: { singular: "I'd", plural: "we'd" },
    SEN_PRE: { singular: "I'm", plural: "we're" },
    SEN_PAST: { singular: "I've", plural: "we've" }
  }

  # Define our receiver pronouns dictionnary
  # will be used in replace_codes, replacements based on receiver_sex
  RECEIVER_PRONOUNS = {
    REC_SP: { male: "he", female: "she" },
    REC_OP: { male: "him", female: "her" },
    REC_POP: { male: "his", female: "her" },
    REC_PEP: { male: "his", female: "hers" },
    REC_IP: { male: "himself", female: "herself" },
    REC_FUT: { male: "he'll", female: "she'll" },
    REC_COND: { male: "he'd", female: "she'd" },
    REC_PRE: { male: "he's", female: "she's" },
    REC_GUY: { male: "guy", female: "gal" },
    REC_BF: { male: "boyfriend", female: "girlfriend" },
    REC_MAN: { male: "man", female: "woman" },
    REC_HOST: { male: "host", female: "hostess" },
    REC_BRO: { male: "brother", female: "sister" }
  }

  # Public class method that returns a ready to display poem in a hash
  # ==== Attributes
  #
  # * +raw_verses+ - Hash returned by VerseSelector.select_verses
  # * +receiver_name+ - String
  # * +location+ - String
  # * +relationship+ - String
  #
  # ==== Returns
  #
  # A hash: { title, intro: { line_one, line_two, line_three, line_four, line_five }, trait: { line_one, line_two, line_three, line_four, line_five }, message: { line_one, line_two, line_three, line_four, line_five } }
  def self.customize_poem(raw_verses, questionnaire)
    
    #First we set PoemCustomizer class variables
    @@receiver_name = questionnaire[:receiver_name]
    @@receiver_sex = questionnaire[:receiver_sex]
    @@location = questionnaire[:location]
    @@relationship = questionnaire[:relationship]

    # Customize raw poem
    title = customize_line(raw_verses[:title])
    Rails.logger.debug "raw verses"
    Rails.logger.debug raw_verses
    intro_verse = {
      line_one: customize_line(raw_verses[:intro_verse]['line_one']),
      line_two: customize_line(raw_verses[:intro_verse]['line_two']),
      line_three: customize_line(raw_verses[:intro_verse]['line_three']),
      line_four: customize_line(raw_verses[:intro_verse]['line_four']),
      line_five: customize_line(raw_verses[:intro_verse]['line_five'])
    }
    trait_verse = {
      line_one: customize_line(raw_verses[:trait_verse]['line_one']),
      line_two: customize_line(raw_verses[:trait_verse]['line_two']),
      line_three: customize_line(raw_verses[:trait_verse]['line_three']),
      line_four: customize_line(raw_verses[:trait_verse]['line_four']),
      line_five: customize_line(raw_verses[:trait_verse]['line_five'])
    }
    message_verse = {
      line_one: customize_line(raw_verses[:message_verse]['line_one']),
      line_two: customize_line(raw_verses[:message_verse]['line_two']),
      line_three: customize_line(raw_verses[:message_verse]['line_three']),
      line_four: customize_line(raw_verses[:message_verse]['line_four']),
      line_five: customize_line(raw_verses[:message_verse]['line_five'])
    }
    poem = {
      title: title,
      intro_verse: intro_verse,
      trait_verse: trait_verse,
      message_verse: message_verse
    }
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
      if line.include? "[LOC]"
        syllables = count_syllables(@@location)
      elsif line.include? "[REL]"
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
    line.sub!("[RNAME]", @@receiver_name)
    line.sub!("[LOC]", @@location)
    line.sub!("[REL]", @@relationship)

    line.sub!("[SEN_SP]", SENDER_PRONOUNS[:SEN_SP][:singular])
    line.sub!("[SEN_OP]", SENDER_PRONOUNS[:SEN_OP][:singular])
    line.sub!("[SEN_POP]", SENDER_PRONOUNS[:SEN_POP][:singular])
    line.sub!("[SEN_PEP]", SENDER_PRONOUNS[:SEN_PEP][:singular])
    line.sub!("[SEN_IP]", SENDER_PRONOUNS[:SEN_IP][:singular])
    line.sub!("[SEN_FUT]", SENDER_PRONOUNS[:SEN_FUT][:singular])
    line.sub!("[SEN_COND]", SENDER_PRONOUNS[:SEN_COND][:singular])
    line.sub!("[SEN_PRE]", SENDER_PRONOUNS[:SEN_PRE][:singular])
    line.sub!("[SEN_PAST]", SENDER_PRONOUNS[:SEN_PAST][:singular])

    line.sub!("[REC_SP]", RECEIVER_PRONOUNS[:REC_SP][@@receiver_sex.to_sym])
    line.sub!("[REC_OP]", RECEIVER_PRONOUNS[:REC_OP][@@receiver_sex.to_sym])
    line.sub!("[REC_POP]", RECEIVER_PRONOUNS[:REC_POP][@@receiver_sex.to_sym])
    line.sub!("[REC_PEP]", RECEIVER_PRONOUNS[:REC_PEP][@@receiver_sex.to_sym])
    line.sub!("[REC_IP]", RECEIVER_PRONOUNS[:REC_IP][@@receiver_sex.to_sym])
    line.sub!("[REC_FUT]", RECEIVER_PRONOUNS[:REC_FUT][@@receiver_sex.to_sym])
    line.sub!("[REC_COND]", RECEIVER_PRONOUNS[:REC_COND][@@receiver_sex.to_sym])
    line.sub!("[REC_PRE]", RECEIVER_PRONOUNS[:REC_PRE][@@receiver_sex.to_sym])
    line.sub!("[REC_GUY]", RECEIVER_PRONOUNS[:REC_GUY][@@receiver_sex.to_sym])
    line.sub!("[REC_BF]", RECEIVER_PRONOUNS[:REC_BF][@@receiver_sex.to_sym])
    line.sub!("[REC_MAN]", RECEIVER_PRONOUNS[:REC_MAN][@@receiver_sex.to_sym])
    line.sub!("[REC_HOST]", RECEIVER_PRONOUNS[:REC_HOST][@@receiver_sex.to_sym])
    line.sub!("[REC_BRO]", RECEIVER_PRONOUNS[:REC_BRO][@@receiver_sex.to_sym])

    return line
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
