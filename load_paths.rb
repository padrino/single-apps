# We use this because we run these apps from our integration test where is not necessary
# load bundler
unless ENV['ALONE']
  require 'rubygems' unless defined?(Gem)
  require 'bundler'
  Bundler.setup
end