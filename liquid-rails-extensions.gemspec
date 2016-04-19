# coding: utf-8
require File.expand_path('../lib/liquid-rails-extensions/version', __FILE__)

Gem::Specification.new do |s|
  s.name              = 'liquid-rails-extensions'
  s.version           = Liquid::Rails::Extensions::VERSION
  s.license           = 'GPL-3.0'
  s.author            = 'Rafał Mikołajun'
  s.summary           = 'Liquid Rails Extensions'
  s.description       = 'Liquid extensions for Rails framework'
  s.homepage          = 'https://github.com/mikoweb/liquid-rails-extensions'

  s.required_ruby_version     = '>= 2.0.0'
  s.required_rubygems_version = '>= 1.8.11'

  s.add_dependency 'rails',    '>= 3.2'
  s.add_dependency 'liquid',   '>= 4.0.0.rc2'
  s.add_dependency 'liquid4-rails', '~> 0.2.0'

  s.files             = `git ls-files -- lib/*`.split("\n")
  s.files            += ['LICENSE']
  s.require_paths     = ['lib']
end
