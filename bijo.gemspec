# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bijo/version'

Gem::Specification.new do |spec|
  spec.name          = "bijo"
  spec.version       = Bijo::VERSION
  spec.authors       = ["karur4n"]
  spec.email         = ["karuran.f@gmail.com"]

  spec.summary       = 'Watch beauty woman image from terminal'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = ['bijo']
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
