# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'selenium_connect_browserstack/version'

Gem::Specification.new do |spec|
  spec.name          = "selenium-connect-browserstack"
  spec.version       = SeleniumConnectBrowserstack::VERSION
  spec.authors       = ["'Jim Gay'"]
  spec.email         = ["jim@saturnflyer.com"]
  spec.summary       = %q{Allow selenimu-connect to use Browserstack.}
  spec.description   = %q{Allow selenimu-connect to use Browserstack.}
  spec.homepage      = ""
  spec.license       = "MIT"


  ignores = File.read('.gitignore').split("\x0").inject([]) {|a,p| a + Dir[p] }
  spec.files = Dir['**/*','.gitignore'] - ignores
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "browserstack", "~> 0.0.1"
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
