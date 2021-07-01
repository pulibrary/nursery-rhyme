require 'reciter'

describe Reciter do

  let(:rhyme_path) { 'spec/fixtures/the_house_that_jack_built.txt' }

  it 'returns a string for the rhyme "The House that Jack Built"' do
    rhyme = File.open(rhyme_path).read
    expect(subject.to_s).to eq(rhyme)
  end

end
