# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "notty/version"

Gem::Specification.new do |s|
  s.name        = "notty"
  s.version     = Notty::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Ernie Miller"]
  s.email       = ["ernie@metautonomo.us"]
  s.homepage    = "http://github.com/ernie/notty"
  s.summary     = %q{Because every yin has a yang.}
  s.description = %q{
    This ridiculous gem inspired by the epic pull request thread
    at https://github.com/rails/rails/pull/258.
  }

  s.rubyforge_project = "notty"

  s.add_development_dependency 'rspec', '~> 2.4.0'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
