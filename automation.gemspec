# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'automation/version'

Gem::Specification.new do |gem|
  gem.name          = "automation"
  gem.version       = Automation::VERSION
  gem.authors       = ["Mike Glenn"]
  gem.email         = ["mglenn@ilude.com"]
  gem.description   = %q{Windows Automation}
  gem.summary       = %q{Windows Automation}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rspec", "~> 2.6"
  gem.add_development_dependency "rspec_candy"
  gem.add_development_dependency "factory_girl", "~> 4.0"
  gem.add_development_dependency "mocha"
  gem.add_development_dependency "rake"

  gem.add_dependency 'logging'
end
