# -*- encoding: utf-8 -*-
require File.expand_path('../lib/kiba-frappe/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['Ben Knowles']
  gem.email         = ['github.kiba.frappe@benknowles.net']
  gem.description   = gem.summary = 'Frappe Framework helpers for Kiba ETL'
  gem.homepage      = 'https://github.com/benknowles/kiba-frappe'
  gem.license       = 'Apache-2.0'
  gem.files         = `git ls-files | grep -Ev '^(examples)'`.split("\n")
  gem.name          = 'kiba-frappe'
  gem.require_paths = ['lib']
  gem.version       = Kiba::Frappe::VERSION

  gem.add_dependency 'kiba', '>= 1.0.0', '< 3'
  gem.add_dependency 'httparty', '>= 0.17.1'
end
