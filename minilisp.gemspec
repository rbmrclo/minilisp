# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'minilisp/version'

Gem::Specification.new do |spec|
  spec.name          = "minilisp"
  spec.version       = Minilisp::VERSION
  spec.authors       = ["Robbie Marcelo"]
  spec.email         = ["rbmrclo@hotmail.com"]
  spec.description   = %q{Lisp in 32 lines of Ruby}
  spec.summary       = %q{A micro LISP implementation in 32 lines of Ruby}
  spec.homepage      = "http://github.com/rbmrclo/Minilisp"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
