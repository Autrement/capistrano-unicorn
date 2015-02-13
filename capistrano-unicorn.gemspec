# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/unicorn/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano-unicorn"
  spec.version       = Capistrano::Unicorn::VERSION
  spec.authors       = ["Jérémy Lecour"]
  spec.email         = ["jeremy.lecour@gmail.com"]

  spec.summary       = %q{Unicorn support for Capistrano 3.x}
  spec.description   = %q{Unicorn support for Capistrano 3.x}
  spec.homepage      = "https://github.com/jlecour/capistrano-unicorn"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_dependency "capistrano", "~> 3.0"
  spec.add_dependency 'capistrano-bundler', '~> 1.1'
  
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
