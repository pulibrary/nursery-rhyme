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

  def recite_random_rhyme

  end

  def generate_random_indices
    random_indices = []
    indices = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

    while indices.length > 0
      random_index = indices.sample
      random_indices.push(random_index)
      indices.delete(random_index)
    end

    random_indices
  end

end
