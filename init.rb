#!/usr/bin/env ruby

# Set the application root for easy reference.
APP_ROOT = File.dirname(__FILE__)

require_relative('lib/reciter')

nursery_rhyme = Reciter.new

puts '"The House That Jack Built":'
puts "-" * 28
puts nursery_rhyme.recite_rhyme
puts "\n"
puts '"The House That Jack Built" in random order:'
puts "-" * 44
puts nursery_rhyme.recite_random_rhyme
puts "\n"
puts '"The House That Jack Built" in semi-random order:'
puts "-" * 49
puts nursery_rhyme.recite_semirandom_rhyme
