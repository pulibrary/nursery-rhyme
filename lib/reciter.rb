class Reciter

  def read
    File.open('spec/fixtures/the_house_that_jack_built.txt').read
  end

end
