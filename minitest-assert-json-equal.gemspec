# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'minitest-assert-json-equal/version'

Gem::Specification.new do |spec|
  spec.name          = 'minitest-assert-json-equal'
  spec.version       = MinitestAssertJsonEqual::VERSION
  spec.authors       = ['Nat Welch']
  spec.email         = ['nat@natwelch.com']

  spec.summary       = 'A gem to compare json strings to see if they are similar.'
  spec.homepage      = 'https://github.com/icco/minitest-assert-json-equal'
  spec.license       = 'MIT'

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'

  spec.add_dependency 'minitest', '~> 5.0'
end
