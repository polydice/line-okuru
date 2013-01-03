# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'line-okuru/version'

Gem::Specification.new do |gem|
  gem.name          = "line-okuru"
  gem.version       = Line::Okuru::VERSION
  gem.authors       = ["Richard Lee"]
  gem.email         = ["rl@polydice.com"]
  gem.description   = %q{ActionView helpers for creating NAVER LINE share buttons.}
  gem.summary       = %q{NAVER LINE share buttons.}
  gem.homepage      = "https://github.com/polydice/line-okuru"

  gem.files = Dir["{lib,vendor}/**/*"] + ["LICENSE.txt", "README.md"]
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "railties", "~> 3.1"
  gem.add_dependency "activesupport", "~> 3.1"
  gem.add_development_dependency "rspec", "~> 2.6"
end
