require 'reciter'

describe Reciter do

  let(:rhyme_path) { 'spec/fixtures/the_house_that_jack_built.txt' }
  let(:random_rhyme_path_1) { 'spec/fixtures/the_house_that_jack_built_phrases.txt' }
  let(:random_rhyme_phrases_path) { 'spec/fixtures/the_house_that_jack_built_phrases.txt' }

  describe '#recite_rhyme' do

    it 'returns a string for the rhyme' do
      rhyme = File.open('spec/fixtures/nursery_rhyme.txt').read
      expect(subject.recite_rhyme).to eq(rhyme)
    end

  end

  describe '#recite_random_rhyme' do

    it 'returns the rhyme with each element in random order' do
      random_indices1 = [5, 9, 3, 10, 1, 11, 8, 6, 7, 0, 4, 2]
      random_rhyme1 = File.open('spec/fixtures/nursery_rhyme_random1.txt').read
      expect(subject.recite_random_rhyme(random_indices1)).to eq(random_rhyme1)

      random_indices2 = [11, 4, 7, 5, 3, 1, 8, 0, 6, 9, 10, 2]
      random_rhyme2 = File.open('spec/fixtures/nursery_rhyme_random2.txt').read
      expect(subject.recite_random_rhyme(random_indices2)).to eq(random_rhyme2)
    end

  end

  describe '#recite_semirandom_rhyme' do

    it 'returns the rhyme with each element in semi-random order' do
      semirandom_indices1 = [0, 7, 10, 6, 4, 5, 2, 3, 11, 8, 1, 9]
      semirandom_rhyme1 = File.open('spec/fixtures/nursery_rhyme_semirandom1.txt').read
      expect(subject.recite_semirandom_rhyme(semirandom_indices1)).to eq(semirandom_rhyme1)

      semirandom_indices2 = [10, 1, 5, 0, 11, 7, 3, 8, 2, 6, 9, 4]
      semirandom_rhyme2 = File.open('spec/fixtures/nursery_rhyme_semirandom2.txt').read
      expect(subject.recite_semirandom_rhyme(semirandom_indices2)).to eq(semirandom_rhyme2)
    end

  end

end
