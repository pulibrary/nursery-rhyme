class Reciter

  def recite_rhyme
    "This is the house that Jack built.\n" +
    "This is the malt that lay in the house that Jack built.\n" +
    "This is the rat that ate the malt that lay in the house that Jack built.\n" +
    "This is the cat that killed the rat that ate the malt that lay in the house that Jack built.\n" +
    "This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n" +
    "This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n" +
    "This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n" +
    "This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n" +
    "This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n" +
    "This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n" +
    "This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n" +
    "This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
  end

  def recite_random_rhyme(random_indices=nil)
    random_indices ||= generate_random_indices

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
    continous_phrase = ""
    random_rhyme = ""

    for random_index in random_indices
      continous_phrase = phrases[random_index].strip + " " + continous_phrase
      random_rhyme += "This is " + continous_phrase.strip + ".\n"
    end

    random_rhyme
  end

  private
    def generate_random_indices
      indices = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
      indices.shuffle
    end

end
