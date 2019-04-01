lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_vue_js/version'

Gem::Specification.new do |spec|
  spec.name          = 'rails_vue_js'
  spec.version       = RailsVueJs::VERSION
  spec.authors       = ['Alex']
  spec.summary       = 'Add Vue.js to rails App'
  spec.description   = 'Add Vue.js to rails App'
  spec.homepage      = 'https://github.com/bit-forge-org/rails_vuejs'
  spec.license       = 'MIT'

  spec.files = Dir[
    '{lib}/**/*', 'Rakefile', 'README.md'
  ]
  # spec.bindir        = 'exe'
  # spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rails', '~> 5.2', '>= 5.2.0'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.63', '>= 0.63'
  spec.add_development_dependency 'sqlite3', '~> 1.3.6'
end
