# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'popshops/version'

Gem::Specification.new do |spec|
  spec.name          = "popshops"
  spec.version       = Popshops::VERSION
  spec.authors       = ["Ben Eggett"]
  spec.email         = ["beneggett@gmail.com"]
  spec.summary       = %q{A Ruby wrapper for working with Popshops latest API (v3).}
  spec.description   = %q{A simple ruby wrapper using httparty and Hashie to communicate with popshops API methods and work with data in nice ruby way.}
  spec.homepage      = "http://www.github.com/beneggett/popshops-api"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_dependency "httparty", "~> 0.8.0"
  spec.add_dependency "hashie", "~> 2.0"
end
