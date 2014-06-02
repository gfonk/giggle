# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'giggle/version'

Gem::Specification.new do |spec|
  spec.name          = "giggle"
  spec.version       = Giggle::VERSION
  spec.authors       = ["Gerald Fontejon"]
  spec.email         = ["gerald.fontejon@gmail.com"]
  spec.summary       = %q{short description of giggle project.}
  spec.description   = %q{longer description of giggle project.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  # spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.test_files    = spec.files.grep(%r{^(test)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "octokit", "~> 2.0"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "yard", "~> 0.8.7.4"
end
