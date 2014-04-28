# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'precise_distance_of_time_in_words/version'

Gem::Specification.new do |spec|
  spec.name          = 'precise_distance_of_time_in_words'
  spec.version       = PreciseDistanceOfTimeInWords::VERSION
  spec.authors       = ['Pedro Henrique Passalini']
  spec.email         = ['henrique.passalini@gmail.com']
  spec.description   = 'This gem offers a more precise "distance_of_time_in_words"'
  spec.summary       = 'A more precise "distance_of_time_in_words"'
  spec.homepage      = 'https://github.com/henrique2010/precise_distance_of_time_in_words'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'activesupport'
end
