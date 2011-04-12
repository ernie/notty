require 'rubygems'
require 'bundler/setup'
require 'notty'

Dir[File.expand_path('../support/*.rb', __FILE__)].each do |f|
  require f
end