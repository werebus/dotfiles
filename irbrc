#!/usr/bin/env ruby

#Hideous debundle hack.  Let me require in rails c things that aren't
#in the gemfile.  (Becuase I don't want to force irbtools on everyone)
#Borrowed from pry-debundle
if defined?(Gem.post_reset_hooks)
  Gem.post_reset_hooks.reject!{ |hook| hook.source_location.first =~ %r{/bundler/} }
  Gem::Specification.reset
  load 'rubygems/custom_require.rb'
  alias gem require
end

#http://rbjl.net/40-irbtools-release-the-power-of-irb
require 'rubygems' unless defined? Gem # rubygems is only needed in 1.8
require 'irbtools'
