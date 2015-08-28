$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'mock_api_rails/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'mock_api_rails'
  s.version     = MockApiRails::VERSION
  s.authors     = ['Felipe Espinoza']
  s.email       = ['ruby@hyper.no']
  s.homepage    = 'TODO'
  s.summary     = 'TODO: Summary of MockApiRails.'
  s.description = 'TODO: Description of MockApiRails.'
  s.license     = 'MIT'

  s.files = Dir[
    '{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc'
  ]

  s.add_dependency 'rails', '~> 4.2.4'

  s.add_development_dependency 'rspec', '3.2.0'
end
