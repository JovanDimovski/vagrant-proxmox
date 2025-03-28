$LOAD_PATH.unshift File.expand_path '../lib', __FILE__
require 'vagrant-proxmox/version'

Gem::Specification.new do |spec|
  spec.name = 'vagrant-proxmox'
  spec.version = VagrantPlugins::Proxmox::VERSION
  spec.platform = Gem::Platform::RUBY
  spec.license = 'MIT'
  spec.authors = ['Dirk Grappendorf', 'Tim Völpel', 'Sebastian Bremicker',
                  'Sebastian Lehn']
  spec.email = ['dirk.grappendorf@telcat.de', 'tim.voelpel@telcat.de',
                'sebastian.bremicker@telcat.de', 'lehn@etracker.com']
  spec.homepage = 'https://github.com/telcat/vagrant-proxmox'
  spec.summary = 'Enables Vagrant to manage virtual machines on a Proxmox server.'
  spec.description = 'Enables Vagrant to manage virtual machines on a Proxmox'\
                     ' server. '
  spec.required_ruby_version     = '~> 2.2'
  spec.required_rubygems_version = '>= 1.3.6'

  spec.add_dependency 'rest-client', '>= 2.0.0', '< 3.0'
  spec.add_runtime_dependency 'retryable', '~> 1.3', '>= 1.3.3'
  spec.add_runtime_dependency 'i18n', '>= 1.14.1'
  spec.add_runtime_dependency 'activesupport', '>= 5', '< 8'
  spec.add_development_dependency 'rake', '13.0.1'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'simplecov', '~> 0.9.0'
  spec.add_development_dependency 'simplecov-rcov', '~> 0.2.3'
  spec.add_development_dependency 'geminabox', '~> 1.1.1'
  spec.add_development_dependency 'guard-rspec', '4.2.10'
  spec.add_development_dependency 'libnotify', '~> 0.8.3'
  spec.add_development_dependency 'timecop', '~>0.7.1'
  spec.add_development_dependency 'cucumber', '~> 1.3', '>= 1.3.15'
  spec.add_development_dependency 'webmock', '~> 1.18', '>= 1.18.0'
  spec.add_development_dependency 'awesome_print', '~> 1.2', '>= 1.2.0'

  spec.files = Dir.glob('lib/**/*.rb') + Dir.glob('locales/**/*.yml')
  spec.test_files = Dir.glob 'spec/**/*.rb'
  spec.require_paths = %w(lib)
end
