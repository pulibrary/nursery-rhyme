require 'reciter'

describe Reciter do

  let(:rhyme_path) { 'spec/fixtures/the_house_that_jack_built.txt' }
  let(:rhyme_phrases_path) { 'spec/fixtures/the_house_that_jack_built_phrases.txt' }

  describe '#recite_rhyme' do

    it 'returns a string for the rhyme' do
      rhyme = File.open(rhyme_path).read
      expect(subject.recite_rhyme).to eq(rhyme)
    end

  end

  describe '#recite_random_rhyme' do

    it 'returns a string for the rhyme with each element in random order' do
      phrases = []
      File.open(rhyme_phrases_path).each_line do |line|
        phrases.push(line)
      end

      random_indices = subject.generate_random_indices
      continous_phrase = ""
      random_rhyme = ""

      for index in random_indices
        continous_phrase = phrases[random_index].strip + " " + continous_phrase
        random_rhyme += "This is " + continous_phrase.strip + ".\n"
      end

      expect(subject.recite_random_rhyme(random_indices)).to eq(random_rhyme)
    end

  end



end
