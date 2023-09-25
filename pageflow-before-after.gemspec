# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pageflow/before_after/version'

Gem::Specification.new do |spec|
  spec.name          = 'pageflow-before-after'
  spec.version       = Pageflow::BeforeAfter::VERSION
  spec.authors       = ['Codevise Solutions']
  spec.email         = ['info@codevise.de']
  spec.summary       = 'Pageflow page type for before/after image slider.'
  spec.homepage      = 'https://github.com/codevise/pageflow-before-after'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.1'

  spec.add_dependency 'pageflow', ['>= 14', '< 17']
  spec.add_dependency 'pageflow-public-i18n', '~> 1.8'

  spec.add_dependency 'jquery-ui-rails', '~> 5.0'

  spec.add_development_dependency 'pageflow-support', ['>= 14', '< 17']
  spec.add_development_dependency 'rspec-rails', '~> 3.0'

  # Semantic versioning rake tasks
  spec.add_development_dependency 'semmy', '~> 1.0'
end
