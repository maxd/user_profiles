# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'user_profiles/version'

Gem::Specification.new do |spec|
  spec.name          = 'user_profiles'
  spec.version       = UserProfiles::VERSION
  spec.authors       = ['Maxim Dobryakov']
  spec.email         = ['maxim.dobryakov@gmail.com']
  spec.summary       = %q{Generate fake user profiles.}
  spec.description   = %q{Gem for generate fake user profiles.}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake', '~> 0'
end
