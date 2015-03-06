# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/gozaru/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-gozaru"
  spec.version       = Ruboty::Gozaru::VERSION
  spec.authors       = ["Takahiro Ooishi"]
  spec.email         = ["taka0125@gmail.com"]
  spec.summary       = %q{append 'ござる'}
  spec.description   = %q{append 'ござる' plugin for Ruboty}
  spec.homepage      = "https://github.com/taka0125/ruboty-gozaru"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "ruboty"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "3.2.0"
end
