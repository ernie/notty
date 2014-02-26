require 'bundler'
require 'rspec/core/rake_task'

Bundler::GemHelper.install_tasks

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

task :console do
  require 'irb'
  require 'irb/completion'
  require './lib/notty'
  ARGV.clear
  IRB.start
end