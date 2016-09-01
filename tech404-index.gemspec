# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tech404logs/version'

Gem::Specification.new do |spec|
  spec.name          = "tech404-index"
  spec.version       = Tech404logs::VERSION
  spec.authors       = ["Zac Stewart"]
  spec.email         = ["zgstewart@gmail.com"]

  spec.summary       = 'Quick logging of Slack chat'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'activesupport'
  spec.add_dependency 'multi_json', '~> 1.11.2'
  spec.add_dependency 'faye-websocket', '~> 0.10.0'
  spec.add_dependency 'dm-postgres-adapter'
  spec.add_dependency 'dm-migrations'
  spec.add_dependency 'data_mapper'
  spec.add_dependency 'sinatra'
  spec.add_dependency 'faraday'
  spec.add_dependency 'puma'
  spec.add_dependency 'le'
  spec.add_dependency 'rack-rewrite'
  spec.add_dependency 'foreman'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'mocha'
  spec.add_development_dependency 'simplecov'
end
