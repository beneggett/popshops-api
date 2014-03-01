# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'popshops/version'

Gem::Specification.new do |spec|
  spec.name          = "popshops-api"
  spec.version       = Popshops::VERSION
  spec.authors       = ["Ben Eggett"]
  spec.email         = ["beneggett@gmail.com"]
  spec.summary       = %q{A Ruby wrapper for working with Popshops latest API (v3).}
  spec.description   = %q{Ruby wrapper using Faraday & Hashie to make API calls}
  spec.homepage      = "http://www.github.com/beneggett/popshops-api"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
