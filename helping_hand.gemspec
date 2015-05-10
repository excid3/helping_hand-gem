# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'helping_hand/version'

Gem::Specification.new do |spec|
  spec.name          = "helping_hand"
  spec.version       = HelpingHand::VERSION
  spec.authors       = ["Chris Oliver"]
  spec.email         = ["excid3@gmail.com"]

  spec.summary       = %q{Embedded help in your Ruby on Rails error pages for learning how to fix bugs when they arise.}
  spec.description   = %q{Embedded help in your Ruby on Rails error pages for learning how to fix bugs when they arise.}
  spec.homepage      = "https://helpinghand-rails.herokuapp.com/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
