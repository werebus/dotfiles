#!/usr/bin/env ruby

major, minor, patch = RUBY_VERSION.split('.').map{|v| v.to_i}

#Let's not worry too much about 1.8
if major >= 2 || (major == 1 && minor == 9)
  #Hideous debundle hack
  load File.join(ENV['HOME'], '.debundle.rb')

  #http://rbjl.net/40-irbtools-release-the-power-of-irb
  require 'irbtools'
end
