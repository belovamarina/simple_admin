# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'simple_admin/version'

Gem::Specification.new do |spec|
  spec.name          = 'simple_admin'
  spec.version       = SimpleAdmin::VERSION
  spec.authors       = ['Dmitriy Strukov']
  spec.email         = ['dmitiry_strukov2011@mail.ru']

  spec.summary       = 'Simple Admin'
  spec.description   = 'Simple Admin'
  spec.homepage      = 'http://simpleadmin.com'
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'

  spec.add_development_dependency 'actionpack'
  spec.add_development_dependency 'actionview'
  spec.add_development_dependency 'activerecord'

  spec.add_dependency 'kaminari'
  spec.add_dependency 'jquery-ui-rails'
  spec.add_dependency 'bootstrap-sass'
end
