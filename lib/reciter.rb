class Reciter

  def recite_rhyme
    index = 0
    continous_phrase = ""
    rhyme = ""

    while index < 12
      continous_phrase = phrases[index].strip + " " + continous_phrase
      rhyme += "This is " + continous_phrase.strip + ".\n"
      index += 1
    end

    rhyme
  end

  def recite_random_rhyme(random_indices=nil)
    random_indices ||= generate_random_indices
    continous_phrase = ""
    rhyme = ""

    for index in random_indices
      continous_phrase = phrases[index].strip + " " + continous_phrase
      rhyme += "This is " + continous_phrase.strip + ".\n"
    end

    rhyme
  end

  def recite_semirandom_rhyme(semirandom_indices=nil)
    semirandom_indices ||= generate_random_indices
    semirandom_indices.delete(0)
    semirandom_indices.unshift(0)
    continous_phrase = ""
    rhyme = ""

    for index in semirandom_indices
      continous_phrase = phrases[index].strip + " " + continous_phrase
      rhyme += "This is " + continous_phrase.strip + ".\n"
    end

    rhyme
  end

  private

    def generate_random_indices
      [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11].shuffle
    end

    def phrases
      [
        "the house that Jack built",
        "the malt that lay in",
        "the rat that ate",
        "the cat that killed",
        "the dog that worried",
        "the cow with the crumpled horn that tossed",
        "the maiden all forlorn that milked",
        "the man all tattered and torn that kissed",
        "the priest all shaven and shorn that married",
        "the rooster that crowed in the morn that woke",
        "the farmer sowing his corn that kept",
        "the horse and the hound and the horn that belonged to",
      ]
    end

end
