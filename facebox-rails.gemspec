# -*- encoding: utf-8 -*-
require File.expand_path('../lib/facebox-rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Sam Woodard"]
  gem.email         = ["sam.h.woodard@gmail.com"]
  gem.description   = %q{Facebox for rails}
  gem.summary       = %q{Railtie for asset pipeline}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "facebox-rails"
  gem.require_paths = ["lib"]
  gem.version       = Facebox::Rails::VERSION
end
