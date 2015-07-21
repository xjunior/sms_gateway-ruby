# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sms_gateway/version'

Gem::Specification.new do |spec|
  spec.name          = "sms_gateway"
  spec.version       = SmsGateway::VERSION
  spec.authors       = ["Carlos Palhares"]
  spec.email         = ["me@xjunior.me"]

  spec.summary       = %q{SmsGateway.me client library for ruby}
  spec.description   = %q{SmsGateway.me client library for ruby}
  spec.homepage      = "https://github.com/xjunior/sms_gateway-ruby"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rest-client", "~> 1.8.0"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
