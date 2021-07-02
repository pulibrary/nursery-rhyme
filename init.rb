#!/usr/bin/env ruby

# Set the application root for easy reference.
APP_ROOT = File.dirname(__FILE__)

require_relative('lib/reciter')

nursery_rhyme = Reciter.new

puts nursery_rhyme.recite_rhyme
