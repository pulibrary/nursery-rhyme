class Reciter

  def recite_rhyme
    index = 0
    phrases = rhyme_phrases
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
    phrases = rhyme_phrases
    continous_phrase = ""
    random_rhyme = ""

    for random_index in random_indices
      continous_phrase = phrases[random_index].strip + " " + continous_phrase
      random_rhyme += "This is " + continous_phrase.strip + ".\n"
    end

    random_rhyme
  end

  def recite_semirandom_rhyme(semirandom_indices=nil)
    semirandom_indices ||= generate_random_indices
    semirandom_indices.delete(0)
    semirandom_indices.unshift(0)
    phrases = rhyme_phrases
    continous_phrase = ""
    semirandom_rhyme = ""

    for semirandom_index in semirandom_indices
      continous_phrase = phrases[semirandom_index].strip + " " + continous_phrase
      semirandom_rhyme += "This is " + continous_phrase.strip + ".\n"
    end

    semirandom_rhyme
  end

  private

    def generate_random_indices
      indices = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
      indices.shuffle
    end

    def rhyme_phrases
      phrases = [
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
