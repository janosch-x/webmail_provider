# encoding: utf-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'webmail_provider'
  s.version     = '0.9.2'
  s.license     = 'MIT'

  s.summary     = 'Returns webmail provider information for email addresses'
  s.description = 'Returns provider names and login URLs for '\
                  'email addresses of some common German and international '\
                  'webmail domains'

  s.authors     = ['Janosch Müller']
  s.email       = 'janosch84@gmail.com'
  s.homepage    = 'https://github.com/janosch-x/webmail_provider'

  s.files       = ['lib/webmail_provider.rb', 'lib/providers.csv']

  s.required_ruby_version = '>= 1.9.2'

  s.add_development_dependency 'mutant-rspec', '~> 0.8'
  s.add_development_dependency 'rake', '~> 11.3'
  s.add_development_dependency 'rspec', '~> 3.5'
end
