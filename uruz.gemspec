# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'uruz/version'

Gem::Specification.new do |spec|
  spec.name          = "uruz"
  spec.version       = Uruz::VERSION
  spec.authors       = ["Nicolas Lima"]
  spec.email         = ["lima.nicolasmateus@gmail.com"]

  spec.summary       = %q{make calculations of BMI and VO2max}
  spec.description   = %q{make calculations of BMI and VO2max}
  spec.homepage      = "https://github.com/nicolaslima/uruz"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
