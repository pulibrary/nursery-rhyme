class Reciter

  def recite_rhyme
    rhyme((0..11).to_a)
  end

  def recite_random_rhyme(random_indices=(0..11).to_a.shuffle)
    rhyme(random_indices)
  end

  def recite_semirandom_rhyme(semirandom_indices=(0..11).to_a.shuffle)
    # make sure that the phrase 'the house that jack built' is always first
    semirandom_indices.delete(0)
    semirandom_indices.unshift(0)
    rhyme(semirandom_indices)
  end

  private
    def rhyme(indices)
      ordered_phrases = indices.map do |i|
        phrases[i]
      end

      lines = ordered_phrases.each_with_index.map do |_phrase, i|
        phrase = ordered_phrases[0..i].reverse.join(" ")
        "This is #{phrase}."
      end

      lines.join("\n")
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
