# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pepin/version'

Gem::Specification.new do |spec|
  spec.name          = 'pepin'
  spec.version       = Pepin::VERSION
  spec.authors       = ['hibariya']
  spec.email         = ['hibariya@gmail.com']

  spec.summary       = %q{Interactive filtering tool for CLI written in Ruby.}
  spec.homepage      = 'https://github.com/hibariya/pepin'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = Gem::Requirement.new(">= 2.1.0")

  spec.add_runtime_dependency 'curses',   '~> 1.4.2'

  spec.add_development_dependency 'bundler', '~> 2.2.21'
  spec.add_development_dependency 'rake', '~> 13.0.3'
  spec.add_development_dependency 'rspec', '~> 3.10.0'
end
